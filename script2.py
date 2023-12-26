from selenium import webdriver
from selenium.webdriver.common.by import By

# Đọc thông tin tài khoản từ file
username = "64132989"
password = "Vinhveer0986209261"

# Khởi tạo trình duyệt
driver = webdriver.Chrome()

# Số lần tải lại trang tối đa
reload_count = 0

while True:
    try:
        # Truy cập vào trang đăng nhập
        driver.get("https://sinhvien.ntu.edu.vn")

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
            # Thực hiện các hành động khác sau khi đăng nhập thành công
            dangkyhocphan_button = driver.find_element(By.ID, "dangkyhocphan")
            dangkyhocphan_button.click()
            driver.get("https://sinhvien.ntu.edu.vn/sinhvien/dangkyhocphan/dangky")
            control = input("Đã xong thao tác, xác nhận thoát (y/n): ")
            if control == "y":
                break
            else:
                continue

    except Exception as e:
        print(f"Error: {str(e)}")
        # Tải lại trang nếu xảy ra lỗi
        driver.refresh()
