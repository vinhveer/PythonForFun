from selenium.common.exceptions import NoSuchElementException
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium import webdriver
import time

def doi_nhom(driver, ma_hoc_phan, target):
    try:
        # Tìm kiếm học phần, ấn vào nút đổi nhóm
        print(f"Thực hiện đổi nhóm")
        xpath = f"//td[text()='{ma_hoc_phan}']/following-sibling::td/img[@title='Đổi nhóm']"
        button = driver.find_element(By.XPATH, xpath)
        button.click()
        print(f"Đã thực hiện click vào nút Đổi nhóm")
        
        # Tìm và click vào nút "Đổi nhóm" của học phần target
        try:
            print(f"Tìm và click vào nút Đổi nhóm của học phần {target}")
            xpath_target = f"//td[text()='{target}']/following-sibling::td/img[@title='Đổi nhóm']"
            target_button = driver.find_element(By.XPATH, xpath_target)
            target_button.click()
            print(f"Đã thực hiện click vào nút Đổi nhóm của học phần {target}")

            # Thêm bước tương ứng với học phần {ma_hoc_phan} ở đây (ví dụ: nhập thông tin, thực hiện hành động, ...)
            # ...
            # Chờ cảnh báo xuất hiện
            alert = WebDriverWait(driver, 10).until(EC.alert_is_present())

            # In nội dung cảnh báo
            print("Alert Text:", alert.text)

            # Xác nhận cảnh báo hoặc bỏ qua cảnh báo (tùy thuộc vào yêu cầu của bạn)
            alert.accept()  # Xác nhận cảnh báo

            return True
        except NoSuchElementException:
            print(f"Không tìm thấy nút Đổi nhóm của học phần {target}")
            return False
    except NoSuchElementException:
        print(f"Không thể thực hiện, bạn chưa đăng ký hoặc xác nhận đăng ký học phần {ma_hoc_phan}")
        return False


def xac_nhan_dang_ky(driver, ma_hoc_phan, target):
    try:
        # Tìm kiếm học phần, ấn vào nút đổi nhóm
        print(f"Thực hiện xác nhận đăng ký")
        xpath = f"//td[text()='{ma_hoc_phan}']/following-sibling::td/img[@title='Xác nhận đăng ký']"
        button = driver.find_element(By.XPATH, xpath)
        button.click()
        print(f"Đã thực hiện click vào nút Xác nhận đăng ký")
        doi_nhom(driver, target)
        return True
    except NoSuchElementException:
        print(f"Không thể thực hiện, bạn chưa thêm học phần này vào KHHT {ma_hoc_phan}")
        return False

def dang_ky(driver, ma_hoc_phan, target):
    try:
        # Tìm kiếm học phần, ấn vào nút đăng ký
        print(f"Thực hiện đăng ký")
        xpath = f"//td[text()='{ma_hoc_phan}']/following-sibling::td/img[@title='Đăng ký']"
        button = driver.find_element(By.XPATH, xpath)
        button.click()
        print(f"Đã thực hiện click vào nút đăng ký")

        # Tìm và click vào nút "Đăng ký" của học phần target
        try:
            print(f"Tìm và click vào nút Đăng ký của học phần {target}")
            xpath_target = f"//td[text()='{target}']/following-sibling::td/img[@title='Đăng ký']"
            target_button = driver.find_element(By.XPATH, xpath_target)
            target_button.click()
            print(f"Đã thực hiện click vào nút Đăng ký của học phần {target}")

            # Thêm bước tương ứng với học phần {ma_hoc_phan} ở đây (ví dụ: nhập thông tin, thực hiện hành động, ...)
            # ...

            return True
        except NoSuchElementException:
            print(f"Không tìm thấy nút Đăng ký của học phần {target}")
            return False
    except NoSuchElementException:
        print(f"Không thể thực hiện đăng ký do chưa xác nhận toàn bộ HP {ma_hoc_phan}")
        return False



# Khởi tạo trình duyệt
driver = webdriver.Chrome()

# Mô phỏng mạng chậm
driver.set_network_conditions(
    offline=False,
    latency=1000,  # Giả lập thời gian trễ là 1000ms (1 giây)
    download_throughput=500 * 1024,  # Giả lập tốc độ tải xuống là 500 KBps
    upload_throughput=500 * 1024  # Giả lập tốc độ tải lên là 500 KBps
)

username = "64132989"
password = "Vinhveer0986209261"

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
ma_hoc_phan = "SOT375"
target = "03" 

# ma_hoc_phan = "SOT332"
# target = "07"

doi_nhom(driver, ma_hoc_phan, target)
xac_nhan_dang_ky(driver, ma_hoc_phan, target)
dang_ky(driver, ma_hoc_phan, target)

# Đợi một khoảng thời gian ngẫu nhiên
sleep_time = 100
# random.randint(1, 3)
time.sleep(sleep_time)

# Đóng trình duyệt
driver.quit()
