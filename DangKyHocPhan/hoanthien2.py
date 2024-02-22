import time
from enum import Enum
from PySide6.QtCore import Qt
from PySide6.QtWidgets import (QApplication, QMainWindow, QWidget, QVBoxLayout, QHBoxLayout, QLabel, QLineEdit,
                               QPushButton, QComboBox, QTableWidget, QTableWidgetItem, QHeaderView, QMessageBox,
                               QCheckBox, QDialog, QFormLayout, QDialogButtonBox)
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import NoSuchElementException

class BrowserType(Enum):
    EDGE = "Edge"
    FIREFOX = "Firefox"
    CHROME = "Chrome"

class TaskType(Enum):
    CONFIRM_ALL = "Tự động xác nhận toàn bộ học phần"
    CHANGE_GROUP = "Đổi nhóm học phần"
    DELETE_COURSE = "Xóa học phần"
    REGISTER = "Đăng ký"

class TaskDialog(QDialog):
    def __init__(self, parent=None):
        super(TaskDialog, self).__init__(parent)
        self.setup_ui()

    def setup_ui(self):
        self.layout = QFormLayout(self)

        self.task_combo = QComboBox(self)
        self.task_combo.addItems([task.value for task in TaskType])
        self.layout.addRow("Chọn tác vụ:", self.task_combo)

        self.ma_hp_input = QLineEdit(self)
        self.ma_nhom_input = QLineEdit(self)
        self.ma_hp_input.setPlaceholderText("Mã học phần")
        self.ma_nhom_input.setPlaceholderText("Mã nhóm")
        self.layout.addRow("Mã học phần:", self.ma_hp_input)
        self.layout.addRow("Mã nhóm:", self.ma_nhom_input)

        self.task_combo.currentIndexChanged.connect(self.toggle_fields)
        self.buttons = QDialogButtonBox(QDialogButtonBox.Save | QDialogButtonBox.Cancel)
        self.buttons.accepted.connect(self.accept)
        self.buttons.rejected.connect(self.reject)
        self.layout.addRow(self.buttons)

        self.toggle_fields()

    def toggle_fields(self):
        task = self.task_combo.currentText()
        show = task != TaskType.CONFIRM_ALL.value
        self.ma_hp_input.setVisible(show)
        self.ma_nhom_input.setVisible(show)

class MainWindow(QMainWindow):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.setGeometry(100, 100, 700, 300)
        self.setup_ui()

    def setup_ui(self):
        main_layout = QHBoxLayout()
        self.left_layout = QVBoxLayout()
        self.setup_left_layout()
        right_layout = QVBoxLayout()
        self.setup_right_layout(right_layout)
        main_layout.addLayout(self.left_layout, 1)
        main_layout.addLayout(right_layout, 3)
        central_widget = QWidget()
        central_widget.setLayout(main_layout)
        self.setCentralWidget(central_widget)

    def setup_left_layout(self):
        title_label = QLabel("Tự động Đăng ký học phần")
        title_label.setAlignment(Qt.AlignCenter)
        self.left_layout.addWidget(title_label)

        add_task_button = QPushButton("Thêm Tác Vụ")
        add_task_button.clicked.connect(self.show_task_dialog)
        self.left_layout.addWidget(add_task_button)

        start_button = QPushButton("Bắt đầu")
        start_button.clicked.connect(self.start_automation)
        self.left_layout.addWidget(start_button)

    def setup_right_layout(self, layout):
        self.table = QTableWidget()
        self.table.setColumnCount(2)
        self.table.setHorizontalHeaderLabels(["Nhiệm vụ", "Xóa"])
        self.table.horizontalHeader().setSectionResizeMode(QHeaderView.Stretch)
        layout.addWidget(self.table)

    def show_task_dialog(self):
        dialog = TaskDialog(self)
        if dialog.exec():
            task = dialog.task_combo.currentText()
            ma_hp = dialog.ma_hp_input.text()
            ma_nhom = dialog.ma_nhom_input.text()
            self.add_task_to_table(task, ma_hp, ma_nhom)

    def add_task_to_table(self, task, ma_hp, ma_nhom):
        row_position = self.table.rowCount()
        self.table.insertRow(row_position)
        if task == TaskType.CONFIRM_ALL.value:
            task_description = task
        else:
            task_description = f"{task} - {ma_hp} - {ma_nhom}"
        self.table.setItem(row_position, 0, QTableWidgetItem(task_description))
        delete_button = QPushButton("Xóa")
        delete_button.clicked.connect(lambda: self.confirm_delete(row_position))
        self.table.setCellWidget(row_position, 1, delete_button)

    def confirm_delete(self, row):
        confirm_dialog = QMessageBox.question(self, "Xác nhận xóa", "Bạn có chắc muốn xóa không?", QMessageBox.Yes | QMessageBox.No)
        if confirm_dialog == QMessageBox.Yes:
            self.table.removeRow(row)

    def start_automation(self):
        # Logic for starting automation based on table entries
        # Connect to Selenium and browser here

    # Add methods for selenium automation for each task type

if __name__ == "__main__":
    app = QApplication([])
    window = MainWindow()
    window.show()
    app.exec()
