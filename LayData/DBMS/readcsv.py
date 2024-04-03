import csv

def print_urls_from_csv(file_path):
    with open('categories.csv', mode='r', encoding='utf-8') as file:
        reader = csv.DictReader(file)
        for row in reader:
            print(row['Link href'])

# Sử dụng hàm để in ra các URL từ tệp CSV
print_urls_from_csv('categories.csv')
