import cv2
from pyzbar.pyzbar import decode
import time
import csv

# Khởi tạo camera
cap = cv2.VideoCapture(0)

# Đặt thời gian trễ giữa các lần quét là 2 giây
scan_interval = 0

# Biến thời gian cho lần quét cuối cùng
last_scan_time = time.time()

# Khởi tạo danh sách để lưu kết quả mã vạch
results = []

# Vòng lặp để đọc từng frame từ camera
while True:
    # Đọc frame từ camera
    ret, frame = cap.read()

    # Kiểm tra nếu đã đủ thời gian để quét lại
    current_time = time.time()
    if current_time - last_scan_time >= scan_interval:
        # Giải mã mã vạch từ frame
        decoded_objects = decode(frame)

        # Hiển thị kết quả mã vạch trên màn hình console và lưu vào danh sách
        for obj in decoded_objects:
            data = obj.data.decode('utf-8')
            results.append(data)
            print("Mã vạch được quét:", data)

        # Cập nhật thời gian lần quét cuối cùng
        last_scan_time = current_time

    # Hiển thị frame với kết quả mã vạch
    cv2.imshow('Barcode Scanner', frame)

    # Đợi phím Enter để kết thúc quét mã vạch hoặc Esc để thoát
    key = cv2.waitKey(1)
    if key == 27:  # 27 là mã ASCII cho phím Esc
        break

# Đóng camera và cửa sổ hiển thị
cap.release()
cv2.destroyAllWindows()

# Kiểm tra trùng lặp mã vạch và chỉ xuất những mã không trùng vào tệp tin CSV
unique_results = list(set(results))

# Xuất kết quả vào tệp tin CSV
csv_file = 'barcode_results.csv'
with open(csv_file, 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(['Mã vạch'])
    for result in unique_results:
        writer.writerow([result])

print("Kết quả đã được lưu vào tệp", csv_file)
