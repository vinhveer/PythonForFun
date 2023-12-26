# Đọc dữ liệu đầu vào
n, T = map(int, input().split())
points = list(map(float, input().split()))

# Sắp xếp điểm trung bình từ cao đến thấp
points.sort(reverse=True)

# Tính toán số lượng học bổng
count_excellent = 0
count_good = 0
total_money = 0

for point in points:
    if point >= 8.0 and total_money + 500 <= T:
        count_excellent += 1
        total_money += 500
    elif point >= 7.0 and total_money + 320 <= T:
        count_good += 1
        total_money += 320

# In ra kết quả
print(count_excellent + count_good)
