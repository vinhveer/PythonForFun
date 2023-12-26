import re

def check_transactions(mssv_file, transaction_file):
    # Đọc dữ liệu từ file giao dịch
    with open(transaction_file, 'r') as f:
        transactions = f.read()

    # Đọc mã số sinh viên từ file mssv
    with open(mssv_file, 'r') as f:
        mssvs = f.read().splitlines()

    # Kiểm tra mỗi mssv xem có trong file giao dịch hay không
    for mssv in mssvs:
        pattern = re.compile(mssv)
        if pattern.search(transactions):
            print(f"{mssv}\tĐã chuyển")
        else:
            print(f"{mssv}\tChưa chuyển")

# Đường dẫn tới file chứa thông tin giao dịch và file chứa danh sách mã số sinh viên
transaction_file_path = "transaction_file.txt"
mssv_file_path = "mssv_file.txt"

# Gọi hàm kiểm tra giao dịch
check_transactions(mssv_file_path, transaction_file_path)
