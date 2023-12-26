import pandas as pd

# Tạo danh sách giáo viên và thời gian bận của họ
teachers = [
    {"name": "Giáo viên A", "busy_times": [("Thứ Hai", "08:00 AM", "10:00 AM"), ("Thứ Ba", "09:30 AM", "11:00 AM")]},
    {"name": "Giáo viên B", "busy_times": [("Thứ Hai", "09:00 AM", "11:30 AM"), ("Thứ Ba", "08:30 AM", "10:30 AM")]},
    {"name": "Giáo viên C", "busy_times": [("Thứ Hai", "08:00 AM", "10:00 AM"), ("Thứ Ba", "09:00 AM", "10:30 AM")]},
]

# Khung giờ dạy cố định
fixed_start_time = "07:00 AM"
fixed_end_time = "11:30 AM"

# Tạo DataFrame để xây dựng bảng lịch
columns = ["Giáo viên"] + ["Thứ " + str(i) for i in range(2, 8)]
data = []

for teacher in teachers:
    row = [teacher["name"]]

    # Tạo danh sách khung thời gian trống cho từng ngày trong tuần
    available_times_per_day = {f"Thứ {day}": [(fixed_start_time, fixed_end_time)] for day in range(2, 8)}

    for busy_time in teacher["busy_times"]:
        day_name = busy_time[0]
        day_start = busy_time[1]
        day_end = busy_time[2]

        # Kiểm tra xem ngày đã tồn tại trong danh sách chưa
        if day_name in available_times_per_day:
            # Loại bỏ thời gian bận
            available_times_per_day[day_name] = [(start, end) for start, end in available_times_per_day[day_name] if end > day_start and start < day_end]

    # Tạo một chuỗi đại diện cho các khung thời gian trống cho từng ngày trong tuần
    available_time_strings = [", ".join([f"{time[0]} - {time[1]}" for time in available_times_per_day[day]]) for day in available_times_per_day.keys()]

    row.extend(available_time_strings)
    data.append(row)

df = pd.DataFrame(data, columns=columns)
print(df)
