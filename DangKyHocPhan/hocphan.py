from selenium.common.exceptions import NoSuchElementException
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium import webdriver
import time

def click_button_by_title(driver, title, ma_hoc_phan):
    try:
        print(f"Thực hiện truy vấn với học phần {title}")
        xpath = f"//td[text()='{ma_hoc_phan}']/following-sibling::td/img[@title='{title}']"
        button = driver.find_element(By.XPATH, xpath)
        button.click()
        print(f"Đã thực hiện click vào nút {title}")
        sleep_time = 100
        time.sleep(sleep_time)
        return True
    except NoSuchElementException:
        print(f"Không tìm thấy nút {title}")
        return False

# Khởi tạo trình duyệt
driver = webdriver.Edge()

username = "65133706"
password = "Thutra@2005"

# Truy cập vào trang đăng nhập
driver.get("https://sinhvien.ntu.edu.vn")

username_input = driver.find_element(By.ID, "txt_Login_ten_dang_nhap")
password_input = driver.find_element(By.ID, "pw_Login_mat_khau")

username_input.clear()
password_input.clear()

username_input.send_keys(username)
password_input.send_keys(password)

login_button = driver.find_element(By.NAME, "bt_Login_submit")
login_button.click()

# Chờ trang đăng nhập xong
wait = WebDriverWait(driver, 10)

# Truy cập trang đăng ký học phần
driver.get("https://sinhvien.ntu.edu.vn/sinhvien/dangkyhocphan/")
driver.get("https://sinhvien.ntu.edu.vn/sinhvien/dangkyhocphan/dangky")

# Chờ một khoảng thời gian để trang được hiển thị (có thể tăng hoặc giảm tùy vào trang web)
driver.implicitly_wait(10)

# Tìm mã học phần trong file HTML và thực hiện các bước kiểm tra và click
ma_hoc_phans = ["FLS380", "POL308", "SSH379"]
titles = ["Đổi nhóm", "Xác nhận đăng ký", "Đăng ký"]
for ma_hoc_phan in ma_hoc_phans:
    for title in titles:
        if click_button_by_title(driver, title, ma_hoc_phan):
            break

# Đợi một khoảng thời gian ngẫu nhiên
sleep_time = 100
# random.randint(1, 3)
time.sleep(sleep_time)

# Đóng trình duyệt
driver.quit()
