from selenium import webdriver
import tkinter as tk
from tkinter import messagebox

class AutoLoginApp:
    def __init__(self, root):
        self.root = root
        root.title("Đăng Ký Học Phần (sinhvien.ntu.edu.vn)")
        root.geometry("400x350")
        root.resizable(False, False)

        # Tiêu đề
        title_label = tk.Label(root, text="Đăng nhập", font=("Segoe UI", 18), padx=10, pady=10)
        title_label.pack()

        # Chọn Trình Duyệt
        browser_label = tk.Label(root, text="Chọn Trình Duyệt:", font=("Segoe UI", 12))
        browser_label.pack()
        self.browser_var = tk.StringVar()
        self.browser_var.set("Chrome")
        browsers = ["Chrome", "Edge", "Firefox"]
        for browser in browsers:
            browser_radio = tk.Radiobutton(root, text=browser, variable=self.browser_var, value=browser)
            browser_radio.pack()

        # Mã Số Sinh Viên
        username_label = tk.Label(root, text="Mã số sinh viên:", font=("Calibri", 12))
        username_label.pack()
        self.username_entry = tk.Entry(root, width=40)
        self.username_entry.pack()

        # Mật Khẩu
        password_label = tk.Label(root, text="Mật khẩu:", font=("Calibri", 12))
        password_label.pack()
        self.password_entry = tk.Entry(root, width=40, show="*")
        self.password_entry.pack()

        # Nút "Đăng Nhập" và Nút "Huỷ"
        login_button = tk.Button(root, text="Đăng Nhập", width=15, command=self.login)
        login_button.pack(pady=10)
        cancel_button = tk.Button(root, text="Huỷ", width=15, command=root.quit)
        cancel_button.pack()

    def login(self):
        username = self.username_entry.get()
        password = self.password_entry.get()
        selected_browser = self.browser_var.get()

        if selected_browser == "Chrome":
            driver = webdriver.Chrome()
        elif selected_browser == "Edge":
            driver = webdriver.Edge()
        elif selected_browser == "Firefox":
            driver = webdriver.Firefox()
        else:
            driver = webdriver.Chrome()  # Default to Chrome if no browser selected

        reload_count = 0

        while True:
            try:
                driver.get("https://sinhvien.ntu.edu.vn")

                username_input = driver.find_element_by_id("txt_Login_ten_dang_nhap")
                password_input = driver.find_element_by_id("pw_Login_mat_khau")

                username_input.clear()
                password_input.clear()

                username_input.send_keys(username)
                password_input.send_keys(password)

                login_button = driver.find_element_by_name("bt_Login_submit")
                login_button.click()

                if "Kết quả học tập" in driver.page_source:
                    dang_ky_hoc_phan_button = driver.find_element_by_id("dangkyhocphan")
                    dang_ky_hoc_phan_button.click()
                    driver.get("https://sinhvien.ntu.edu.vn/sinhvien/dangkyhocphan/dangky")
                    result = messagebox.askyesno("Xác Nhận Thoát", "Đã xong thao tác, xác nhận thoát?")
                    if result:
                        break
            except Exception as ex:
                print("Error:", ex)
                driver.refresh()

        driver.quit()

if __name__ == "__main__":
    root = tk.Tk()
    app = AutoLoginApp(root)
    root.mainloop()
