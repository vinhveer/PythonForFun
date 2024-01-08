import openpyxl
from openpyxl import Workbook
from openpyxl.styles import Alignment

# Tạo một workbook mới
workbook = Workbook()

# Lấy sheet active (sheet đầu tiên)
sheet = workbook.active

# Thêm dữ liệu vào sheet
sheet['A1'] = 'Tên'
sheet['B1'] = 'Tuổi'

# Giả sử bạn có một danh sách người dùng
users = [
    {'name': 'Nguyen Van A', 'age': 25},
    {'name': 'Tran Thi B', 'age': 30},
    # ... thêm các người dùng khác tại đây
]

# Thêm dữ liệu từ danh sách người dùng vào sheet
for index, user in enumerate(users, start=2):
    sheet[f'A{index}'] = user['name']
    sheet[f'B{index}'] = user['age']

# Định dạng cột A và B (căn giữa văn bản)
for col in ['A', 'B']:
    for row in range(1, len(users) + 2):
        cell = sheet[f'{col}{row}']
        cell.alignment = Alignment(horizontal='center')

# Lưu workbook vào một file Excel
workbook.save('example.xlsx')
