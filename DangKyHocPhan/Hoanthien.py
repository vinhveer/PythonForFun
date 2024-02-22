import time
from PySide6.QtCore import Qt
from PySide6.QtWidgets import QApplication, QMainWindow, QWidget, QVBoxLayout, QHBoxLayout, QLabel, QLineEdit, QPushButton, QComboBox, QTableWidget, QTableWidgetItem, QHeaderView, QMessageBox, QCheckBox
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import NoSuchElementException

class MainWindow(QMainWindow):
    def __init__(self):
        super(MainWindow, self).__init__()

        # Thiết lập kích thước của cửa sổ
        self.setGeometry(100, 100, 700, 300)

        # Tạo layout chính
        main_layout = QHBoxLayout()

        # Layout 1/4
        self.left_layout = QVBoxLayout()

        # Tiêu đề
        title_label = QLabel("Tự động Đăng ký học phần")
        title_label.setAlignment(Qt.AlignCenter)
        self.left_layout.addWidget(title_label)

        # Thông tin đăng nhập
        login_label = QLabel("Thông tin đăng nhập")
        self.left_layout.addWidget(login_label)

        start_button = QPushButton("Bắt đầu")
        start_button.clicked.connect(self.start_automation)
        self.left_layout.addWidget(start_button)

        self.ma_sv_input = QLineEdit(self)
        self.ma_sv_input.setPlaceholderText("Mã số sinh viên")
        self.left_layout.addWidget(self.ma_sv_input)

        self.mat_khau_input = QLineEdit(self)
        self.mat_khau_input.setPlaceholderText("Mật khẩu")
        self.mat_khau_input.setEchoMode(QLineEdit.Password)
        self.left_layout.addWidget(self.mat_khau_input)

        self.show_pass_checkbox = QCheckBox("Hiển thị mật khẩu")
        self.show_pass_checkbox.toggled.connect(self.toggle_password_visibility)
        self.left_layout.addWidget(self.show_pass_checkbox)

        browser_label = QLabel("Chọn trình duyệt:")
        self.left_layout.addWidget(browser_label)

        self.browser_combo = QComboBox(self)
        self.browser_combo.addItems(["Edge", "Firefox", "Chrome"])
        self.left_layout.addWidget(self.browser_combo)

        h2_label = QLabel("Thông tin học phần")
        self.left_layout.addWidget(h2_label)

        self.ma_hp_input = QLineEdit(self)
        self.ma_hp_input.setPlaceholderText("Mã học phần")
        self.left_layout.addWidget(self.ma_hp_input)

        self.ma_nhom_input = QLineEdit(self)
        self.ma_nhom_input.setPlaceholderText("Mã nhóm")
        self.left_layout.addWidget(self.ma_nhom_input)

        menu_label = QLabel("Nhiệm vụ:")
        self.left_layout.addWidget(menu_label)

        self.menu_combo = QComboBox(self)
        self.menu_combo.addItems(["Đổi nhóm", "Xác nhận học phần", "Đăng ký"])
        self.left_layout.addWidget(self.menu_combo)

        add_button = QPushButton("Thêm >>")
        self.left_layout.addWidget(add_button)

        # Layout 3/4
        right_layout = QVBoxLayout()

        self.table = QTableWidget(self)
        self.table.setColumnCount(4)
        self.table.setColumnCount(5)  # Thêm một cột mới
        self.table.setHorizontalHeaderLabels(["Mã học phần", "Mã nhóm", "Nhiệm vụ", "Xóa", "Trạng thái"])
        self.table.horizontalHeader().setSectionResizeMode(QHeaderView.Stretch)

        right_layout.addWidget(self.table)

        # Thêm các layout vào layout chính
        main_layout.addLayout(self.left_layout, 1)
        main_layout.addLayout(right_layout, 3)

        # Thiết lập layout chính cho cửa sổ
        central_widget = QWidget()
        central_widget.setLayout(main_layout)
        self.setCentralWidget(central_widget)

        # Kết nối sự kiện
        add_button.clicked.connect(self.add_content)
        self.table.cellClicked.connect(self.confirm_delete)
        self.show_pass_checkbox.setChecked(False)

    def start_automation(self):
        ma_sv = self.ma_sv_input.text()
        mat_khau = self.mat_khau_input.text()
        browser_choice = self.browser_combo.currentText()

        if ma_sv and mat_khau and browser_choice:
            # Khởi tạo trình duyệt
            if browser_choice == "Edge":
                driver = webdriver.Edge()
            elif browser_choice == "Firefox":
                driver = webdriver.Firefox()
            elif browser_choice == "Chrome":
                driver = webdriver.Chrome()
            else:
                QMessageBox.warning(self, "Cảnh báo", "Trình duyệt không được hỗ trợ")
                return

            try:
                # (Các bước đăng nhập giữ nguyên)
                driver.get("https://sinhvien.ntu.edu.vn")

                username_input = driver.find_element(By.ID, "txt_Login_ten_dang_nhap")
                password_input = driver.find_element(By.ID, "pw_Login_mat_khau")

                username_input.clear()
                password_input.clear()

                username_input.send_keys(ma_sv)
                password_input.send_keys(mat_khau)

                login_button = driver.find_element(By.NAME, "bt_Login_submit")
                login_button.click()

                # # Chờ trang đăng nhập xong
                # wait = WebDriverWait(driver, 10)

                # Truy cập trang đăng ký học phần
                driver.get("https://sinhvien.ntu.edu.vn/sinhvien/dangkyhocphan/")
                driver.get("https://sinhvien.ntu.edu.vn/sinhvien/dangkyhocphan/dangky")


                # Thực hiện hành động tùy thuộc vào menu_item
                for row in range(self.table.rowCount()):
                    ma_hp = self.table.item(row, 0).text()
                    ma_nhom = self.table.item(row, 1).text()
                    menu_item = self.table.item(row, 2).text()

                    if menu_item == "Đổi nhóm":
                        self.doi_nhom(driver, ma_hp, ma_nhom)
                    elif menu_item == "Xác nhận học phần":
                        self.xac_nhan_dang_ky(driver, ma_hp, ma_nhom)
                    elif menu_item == "Đăng ký":
                        self.dang_ky(driver, ma_hp, ma_nhom)

            except Exception as e:
                print(f"Lỗi: {e}")

            finally:
                # Đợi một khoảng thời gian ngẫu nhiên
                sleep_time = 100
                # random.randint(1, 3)
                time.sleep(sleep_time)
                # Đóng trình duyệt khi hoàn thành
                driver.quit()

        else:
            QMessageBox.warning(self, "Cảnh báo", "Vui lòng điền đầy đủ thông tin")


    def doi_nhom(self, driver, ma_hp, target):
        try:
            # Tìm kiếm học phần, ấn vào nút đổi nhóm
            print(f"Thực hiện đổi nhóm")
            xpath = f"//td[text()='{ma_hp}']/following-sibling::td/img[@title='Đổi nhóm']"
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

                # Thêm bước tương ứng với học phần {ma_hp} ở đây (ví dụ: nhập thông tin, thực hiện hành động, ...)
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
            print(f"Không thể thực hiện, bạn chưa đăng ký hoặc xác nhận đăng ký học phần {ma_hp}")
            return False

    def xac_nhan_dang_ky(self, driver, ma_hp, target):
        try:
            # Tìm kiếm học phần, ấn vào nút xác nhận đăng ký
            print(f"Thực hiện xác nhận đăng ký")
            xpath = f"//td[text()='{ma_hp}']/following-sibling::td/img[@title='Xác nhận đăng ký']"
            button = driver.find_element(By.XPATH, xpath)
            button.click()
            print(f"Đã thực hiện click vào nút Xác nhận đăng ký")

            

            self.doi_nhom(driver, ma_hp, target)
            return True
        except NoSuchElementException:
            print(f"Không thể thực hiện, bạn chưa thêm học phần này vào KHHT {ma_hp}")
            return False

    def dang_ky(self, driver, ma_hp, target):
        try:
            # Tìm kiếm học phần, ấn vào nút đăng ký
            print(f"Thực hiện đăng ký")
            xpath = f"//td[text()='{ma_hp}']/following-sibling::td/img[@title='Đăng ký']"
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

                # Thêm bước tương ứng với học phần {ma_hp} ở đây (ví dụ: nhập thông tin, thực hiện hành động, ...)
                # ...
                time.sleep(3)
                # Thực hiện ẩn modal
                driver.execute_script("hideModal('dlg_chon_nhom_dang_ky');")
                
                return True
            except NoSuchElementException:
                print(f"Không tìm thấy nút Đăng ký của học phần {target}")
                return False
        except NoSuchElementException:
            print(f"Không thể thực hiện đăng ký do chưa xác nhận toàn bộ HP {ma_hp}")
            return False
        
    def add_content(self):
        ma_hp = self.ma_hp_input.text()
        ma_nhom = self.ma_nhom_input.text()
        menu_item = self.menu_combo.currentText()

        if ma_hp and ma_nhom and menu_item:
            row_position = self.table.rowCount()
            self.table.insertRow(row_position)
            self.table.setItem(row_position, 0, QTableWidgetItem(ma_hp))
            self.table.setItem(row_position, 1, QTableWidgetItem(ma_nhom))
            self.table.setItem(row_position, 2, QTableWidgetItem(menu_item))
            self.table.setItem(row_position, 4, QTableWidgetItem("Chưa xử lý"))  # Mặc định là "Chưa xử lý"

            delete_button = QPushButton("Xóa")
            delete_button.clicked.connect(lambda row=row_position: self.confirm_delete(row))
            self.table.setCellWidget(row_position, 3, delete_button)
        else:
            QMessageBox.warning(self, "Cảnh báo", "Vui lòng điền đầy đủ thông tin")

    def confirm_delete(self, row):
        confirm_dialog = QMessageBox(self)
        confirm_dialog.setIcon(QMessageBox.Question)
        confirm_dialog.setText("Bạn có chắc muốn xóa không?")
        confirm_dialog.setWindowTitle("Xác nhận xóa")
        confirm_dialog.setStandardButtons(QMessageBox.Yes | QMessageBox.No)

        result = confirm_dialog.exec_()

        if result == QMessageBox.Yes:
            self.table.removeRow(row)

    def toggle_password_visibility(self):
        if self.show_pass_checkbox.isChecked():
            self.mat_khau_input.setEchoMode(QLineEdit.Normal)
        else:
            self.mat_khau_input.setEchoMode(QLineEdit.Password)

if __name__ == "__main__":
    app = QApplication([])
    window = MainWindow()
    window.show()
    app.exec()
