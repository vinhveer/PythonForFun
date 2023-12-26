from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

import PyPDF2
import time
import pdfkit
import random

def extract_text_from_pdf(pdf_file):
    text = ""
    with open(pdf_file, "rb") as file:
        reader = PyPDF2.PdfReader(file)
        num_pages = len(reader.pages)
        for page_number in range(num_pages):
            page = reader.pages[page_number]
            text += page.extract_text()
    return text

def extract_first_image_from_pdf(file_name):
    with open(file_name, "rb") as file:
        reader = PyPDF2.PdfReader(file)
        for page in reader.pages:
            if "/XObject" in page["/Resources"]:
                x_objects = page["/Resources"]["/XObject"].get_object()
                for obj in x_objects:
                    if x_objects[obj].get("/Subtype") == "/Image":
                        image = x_objects[obj]
                        return image

    return None

def save_image(image, file_name):
    with open(file_name, "wb") as fileimg:
        fileimg.write(image.get_data())


# Khởi tạo trình duyệt
driver = webdriver.Edge()

# Đọc danh sách tài khoản từ file
accounts = []
with open("acc.txt", "r") as file:
    for line in file:
        line = line.strip()
        if line:
            username, password = line.split(" ")
            accounts.append((username, password))

# Truy cập vào trang đăng nhập
driver.get("https://sinhvien.ntu.edu.vn")

with open("ketqua.txt", "w", encoding="utf-8") as fileketqua:
    fileketqua.write("Start\n")
    # Lặp qua danh sách tài khoản và thực hiện đăng nhập
    for account in accounts:
        username, password = account
        # Tìm và điền thông tin đăng nhập
        username_input = driver.find_element(By.ID, "txt_Login_ten_dang_nhap")
        password_input = driver.find_element(By.ID, "pw_Login_mat_khau")
        # Xóa nội dung trường nhập liệu trước khi điền thông tin tài khoản mới
        username_input.clear()
        password_input.clear()
        # Điền thông tin tài khoản
        username_input.send_keys(username)
        password_input.send_keys(password)
        # Bấm nút login
        login_button = driver.find_element(By.NAME, "bt_Login_submit")
        login_button.click()
        # Kiểm tra điều kiện đăng nhập thành công: có "Kết quả học tập"
        if "Kết quả học tập" in driver.page_source:
            # Mở tệp để ghi
            ketqua = f"Đăng nhập thành công: {username} {password}\n"
            fileketqua.write(ketqua)
            # Thực hiện các hành động khác sau khi đăng nhập thành công
            thongtinsinhvien_button = driver.find_element(By.ID, "thongtinsinhvien")
            thongtinsinhvien_button.click()
            # Đợi cho đến khi phần tử tblLyLich trên trang hiển thị (chứa lý lịch)
            wait = WebDriverWait(driver, 10)
            element = wait.until(EC.visibility_of_element_located((By.NAME, "tblLyLich")))
            # Lấy nội dung HTML của tblLyLich sinh viên
            html = driver.page_source
            # Sử dụng BeautifulSoup để trích xuất nội dung HTML
            soup = BeautifulSoup(html, 'html.parser')
            # Lưu nội dung bảng thành file HTML
            with open(f'Export/{username}.html', 'w', encoding='utf-8') as filehtml:
                filehtml.write(str(soup.find('table', {'name': 'tblLyLich'})))

            #Thử lấy chỉ các <tr> cần thiết
            #with open(f'Export/{username}.html', 'w', encoding='utf-8') as filehtml:
                # Tìm tất cả các thẻ <tr> trong bảng thông tin sinh viên
                #table_rows = soup.find('table', {'name': 'tblLyLich'}).find_all('tr')
                # # Lấy nội dung của thẻ <tr> thứ 37
                # tr_37_content = table_rows[37].text.strip()  # Chỉnh lại chỉ số từ 0
                # # Chỉ lấy các thẻ <tr> cần thiết, 32 là 3.
                # selected_rows = table_rows[1:11] + table_rows[32:37] + ((table_rows[42]) if (tr_37_content == "Nội trú") else (table_rows[38:41]))+ table_rows[43:52]
                # Ghi các thẻ <tr> đã lựa chọn vào file HTML
                #filehtml.write(' '.join(str(row) for row in table_rows))    

            # Đường dẫn tới tệp thực thi wkhtmltopdf
            path_to_wkhtmltopdf = r"C:/Program Files/wkhtmltopdf/bin/wkhtmltopdf.exe"  # Thay thế bằng đường dẫn thực tế trên máy tính của bạn

            # Thiết lập đường dẫn cho pdfkit
            pdfkit_config = pdfkit.configuration(wkhtmltopdf=path_to_wkhtmltopdf)
            # Tùy chỉnh các tùy chọn của pdfkit
            options = {
                "quiet": "",
                "encoding": "UTF-8",
                "no-outline": None,
                'page-size': 'A4',
                'orientation': 'Landscape',  # Chiều ngang
                'margin-top': '0mm',
                'margin-right': '0mm',
                'margin-bottom': '0mm',
                'margin-left': '0mm'
            }
            # Lấy nội dung HTML và chuyển đổi thành PDF
            pdfkit.from_file(f'Export/{username}.html', f'Export/{username}.pdf', configuration=pdfkit_config, options=options)

            # Trích xuất văn bản từ tệp PDF
            extracted_text = extract_text_from_pdf(f'Export/{username}.pdf')
            with open(f'Export/{username}.txt', "w", encoding="utf-8") as file:
                file.write(extracted_text)

            # Trích xuất ảnh đầu tiên từ tệp PDF
            first_image = extract_first_image_from_pdf(f'Export/{username}.pdf')
            # Kiểm tra xem có ảnh được trích xuất hay không
            if first_image is not None:
                # Lưu ảnh thành tệp tin
                image_file_name = f"Export/{username}.jpg"
                save_image(first_image, image_file_name)
                print(f"Save img {username} done.")
            else:
                print("No img {username} to save.")

            # Xóa cookie và tải lại trang để đảm bảo việc đăng nhập mới
            driver.delete_all_cookies()
            driver.refresh()
            print(f"{username} OK.")
        else:
            # Nếu không login được
            fileketqua.write(f"Tài khoản {username} đăng nhập không thành công\n")
            print(f"Login {username} failed.")
        # Thời gian sleep ngẫu nhiên từ 1 đến 3 giây
        sleep_time = random.randint(1, 3)
        time.sleep(sleep_time)

# Sau khi hoàn thành đăng nhập tất cả tài khoản, đóng trình duyệt
driver.quit()