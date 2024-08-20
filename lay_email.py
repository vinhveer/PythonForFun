import csv
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

# Khởi tạo trình duyệt
driver = webdriver.Edge()

url_2 = "https://elearning.ntu.edu.vn/login/index.php"
driver.get(url_2)

username_input = driver.find_element(By.NAME, "username")
password_input = driver.find_element(By.NAME, "password")
login_button = driver.find_element(By.ID, "loginbtn")

# Nhập thông tin đăng nhập
username_input.send_keys("64132989")
password_input.send_keys("123456")

# Bấm nút đăng nhập
login_button.click()

# Đợi cho đến khi xuất hiện phần tử đăng xuất (điều kiện là bạn có thể đặt dựa trên trang web cụ thể của bạn)
try:
    element = WebDriverWait(driver, 10).until(
        EC.presence_of_element_located((By.ID, "page-site-index"))
    )
    print("Đăng nhập thành công!")

    # Mở trang web cần kiểm tra
    url = "https://elearning.ntu.edu.vn/user/index.php?id=25911&perpage=80"
    driver.get(url)

    # Tìm phần tử có id là "participants"
    participants_section = driver.find_element(By.ID, "participants")

    # Tìm đến tbody trong phần tử "participants"
    tbody = participants_section.find_element(By.TAG_NAME, "tbody")

    # Tìm tất cả các thẻ a (liên kết) trong tbody
    links = tbody.find_elements(By.TAG_NAME, "a")

    # Tạo danh sách để lưu thông tin email và tên sinh viên
    data_list = []

    # Lặp qua từng liên kết và thực hiện thao tác
    for link in links:
        # Kiểm tra nếu thẻ có class là "emptyrow" thì dừng lại
        if "emptyrow" in link.get_attribute("class"):
            print("Đã gặp class 'emptyrow'. Dừng lại.")
            break

        href = link.get_attribute("href")

        # Bấm vào liên kết
        link.click()

        # Tìm phần tử có class là "contentnode"
        content_node = driver.find_element(By.CLASS_NAME, "contentnode")

        # Lấy thông tin từ thẻ
        email_dd = content_node.find_element(By.TAG_NAME, "dd").text

        # Lấy tên sinh viên từ thẻ
        student_name = driver.find_element(By.CSS_SELECTOR, '.page-header-headings h2').text

        # Thêm thông tin email và tên sinh viên vào danh sách
        data_list.append([email_dd, student_name])

        # In thông tin ra console
        print(f"Email: {email_dd}, Tên sinh viên: {student_name}")

        # Quay lại trang trước đó
        driver.execute_script("window.history.go(-1)")

    # Lưu danh sách email và tên sinh viên vào file CSV
    with open("emails.csv", "w", newline="", encoding="utf-8") as csvfile:
        csv_writer = csv.writer(csvfile)
        csv_writer.writerow(["Emails", "Tên sinh viên"])  # Ghi header
        for data_row in data_list:
            csv_writer.writerow(data_row)

except Exception as e:
    print(f"Không thể đăng nhập! Lỗi: {e}")

# Đóng trình duyệt
driver.quit()
