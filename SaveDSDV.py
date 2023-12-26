import time
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

# Đọc danh sách tài khoản từ file
accounts = []
with open("QLDV/acc.txt", "r") as file:
    for line in file:
        line = line.strip()
        if line:
            username, password = line.split(" ")
            accounts.append((username, password))
with open("QLDV/ketqua.txt", "w", encoding="utf-8") as fileketqua:
    # Truy cập vào trang đăng nhập
    for account in accounts:
        # Khởi tạo trình duyệt
        driver = webdriver.Edge()  
        driver.get("https://quanlydoanvien.doanthanhnien.vn/login")

        username, password = account
        # Tìm và điền thông tin đăng nhập
        # Đợi cho đến khi phần tử load xong
        wait = WebDriverWait(driver, 20)
        element = wait.until(EC.visibility_of_element_located((By.CSS_SELECTOR, 'input[formcontrolname="password"]')))
        username_input = driver.find_element(By.CSS_SELECTOR, 'input[formcontrolname="username"]')
        password_input = driver.find_element(By.CSS_SELECTOR, 'input[formcontrolname="password"]')
        # Xóa nội dung trường nhập liệu trước khi điền thông tin tài khoản mới
        username_input.clear()
        password_input.clear()
        # Điền thông tin tài khoản
        username_input.send_keys(username)
        password_input.send_keys(password)
        # Bấm nút login
        login_button = driver.find_element(By.CSS_SELECTOR, 'button.ant-btn.login-form-button.login-form-margin.ant-btn-primary')
        login_button.click()
        time.sleep(2)
        if "Đăng nhập thất bại" in driver.page_source:
            time.sleep(2)
            driver.quit()
            # Nếu không login được
            print(f"Login {username} failed.")
            continue  # Chuyển đến tài khoản tiếp theo trong vòng lặp

        # Đợi cho đến khi phần tử load xong
        while ("Thống kê dữ liệu" not in driver.page_source):
            time.sleep(1)
        if "Thống kê dữ liệu" in driver.page_source:
            print(f"Login {username} OK.")
            fileketqua.write(f"Login {username} OK.\n")
            # Thực hiện các hành động khác sau khi đăng nhập thành công
            driver.get("https://quanlydoanvien.doanthanhnien.vn/he-thong/ds-doan-vien")
            # Chờ cho phần tử <li> hiển thị
            wait = WebDriverWait(driver, 10)
            button_element = wait.until(EC.visibility_of_element_located((By.XPATH, "//button[contains(@class, 'btn-success')]")))
            # Bấm vào phần tử <button>
            button_element.click()   
            time.sleep(2)
            link_element = wait.until(EC.visibility_of_element_located((By.XPATH, "//a[contains(text(), 'Xuất danh sách')]")))
            # Bấm vào phần tử <a>
            link_element.click()
            time.sleep(5)
        driver.quit()    
        time.sleep(3)
