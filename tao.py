from selenium.common.exceptions import NoSuchElementException
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium import webdriver

# Khởi tạo trình duyệt
driver = webdriver.Chrome()

username = "65133868"
password = "056305007787"

# Truy cập vào trang đăng nhập
driver.get("https://sinhvien.ntu.edu.vn")

# Chờ cho đến khi các phần tử đăng nhập xuất hiện
wait = WebDriverWait(driver, 10)
username_input = wait.until(EC.presence_of_element_located((By.ID, "txt_Login_ten_dang_nhap")))
password_input = wait.until(EC.presence_of_element_located((By.ID, "pw_Login_mat_khau")))

username_input.clear()
password_input.clear()

username_input.send_keys(username)
password_input.send_keys(password)

login_button = wait.until(EC.element_to_be_clickable((By.NAME, "bt_Login_submit")))
login_button.click()

# Chờ cho đến khi trang sau đăng nhập tải xong và phần tử 'sskey' có sẵn
try:
    sskey_value = wait.until(EC.presence_of_element_located((By.ID, 'sskey'))).get_attribute('value')
    print('Giá trị của sskey:', sskey_value)
except NoSuchElementException:
    print('Không tìm thấy phần tử sskey.')

# Đóng trình duyệt
driver.quit()
