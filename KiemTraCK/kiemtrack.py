import csv

def read_csv_file(csv_file):
    data = []
    with open(csv_file, 'r', newline='') as file:
        reader = csv.reader(file)
        for row in reader:
            data.append(row)
    return data

def check_code_in_ls(code_to_check, ls_file):
    with open(ls_file, 'r') as ls:
        ls_data = ls.readlines()
        for line in ls_data:
            if code_to_check in line:
                return True
    return False

def main():
    csv_file = 'data.csv'  # Đường dẫn tới file CSV
    ls_file = 'LS.txt'      # Đường dẫn tới file LS.txt

    # Đọc file CSV
    csv_data = read_csv_file(csv_file)
    
    total = 0
    # Kiểm tra mã số trong file CSV có trong file LS.txt không
    for row in csv_data:
        code = row[0]  # Giả sử mã số nằm ở cột đầu tiên của file CSV
        if check_code_in_ls(code, ls_file):
            print(f"{code}")
            total += 1
            
    print(f"Total: {total}")
if __name__ == "__main__":
    main()
