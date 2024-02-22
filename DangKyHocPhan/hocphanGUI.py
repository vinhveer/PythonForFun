from PySide6.QtCore import Qt
from PySide6.QtWidgets import QApplication, QMainWindow, QWidget, QVBoxLayout, QHBoxLayout, QLabel, QLineEdit, QPushButton, QComboBox, QTableWidget, QTableWidgetItem, QHeaderView, QMessageBox, QCheckBox

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
        title_label = QLabel("Automation ĐKHP")
        title_label.setAlignment(Qt.AlignCenter)
        self.left_layout.addWidget(title_label)

        # Thông tin đăng nhập
        login_label = QLabel("Thông tin đăng nhập")
        self.left_layout.addWidget(login_label)

        start_button = QPushButton("Bắt đầu")
        self.left_layout.addWidget(start_button)

        self.ma_sv_input = QLineEdit(self)
        self.ma_sv_input.setPlaceholderText("Mã số sinh viên")
        self.left_layout.addWidget(self.ma_sv_input)

        self.mat_khau_input = QLineEdit(self)
        self.mat_khau_input.setPlaceholderText("Mật khẩu")
        self.mat_khau_input.setEchoMode(QLineEdit.Password)  # Ẩn mật khẩu
        self.left_layout.addWidget(self.mat_khau_input)

        # Thêm nút con mắt
        self.show_pass_checkbox = QCheckBox("Hiển thị mật khẩu")
        self.show_pass_checkbox.toggled.connect(self.toggle_password_visibility)
        self.left_layout.addWidget(self.show_pass_checkbox)

        browser_label = QLabel("Chọn trình duyệt:")
        self.left_layout.addWidget(browser_label)

        self.browser_combo = QComboBox(self)
        self.browser_combo.addItems(["Edge", "Firefox", "Chrome"])
        self.left_layout.addWidget(self.browser_combo)

        # Thông tin học phần
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
        self.table.setColumnCount(4)  # Xóa cột "Tính năng"
        self.table.setHorizontalHeaderLabels(["Mã học phần", "Mã nhóm", "Nhiệm vụ", "Xóa"])
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

        # Thêm sự kiện xóa
        self.table.cellClicked.connect(self.confirm_delete)

        # Set trạng thái ban đầu của checkbox
        self.show_pass_checkbox.setChecked(False)

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
