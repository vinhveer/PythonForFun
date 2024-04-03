import json
import csv
import os
import requests
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import NoSuchElementException, StaleElementReferenceException, TimeoutException

output_folder = "output_csv"
os.makedirs(output_folder, exist_ok=True)

# Vòng lặp 1: Lấy data từ CSV lưu vào dict
book_data = {}
with open('categories.csv', mode='r', encoding='utf-8') as file:
    reader = csv.DictReader(file)
    for row in reader:
        category_name = row['Tên thẻ a']
        url = row['Link href']
        book_data[category_name] = url

# Vòng lặp 2: Thực hiện từ dict
for category_name, url in book_data.items():
    # Khởi tạo trình duyệt
    driver = webdriver.Chrome()

    try:
        # Truy cập vào trang web
        response = requests.get(url)
        if response.status_code == 200:
            driver.get(url)
        else:
            print("Không thể truy cập trang web.")
            continue  # Chuyển sang vòng lặp tiếp theo nếu không thể truy cập trang web

        # Tìm các thẻ a có class LandingPage-bookCard và lấy giá trị href
        book_links = driver.find_elements(By.CSS_SELECTOR, "a.LandingPage-bookCard")

        # Mảng để lưu trữ các giá trị href
        book_urls = []

        book_dictionary = {}

        def add_book(book_name, book_authors, book_info, image_url):
            if book_name not in book_dictionary:
                book_dictionary[book_name] = {'authors': book_authors, 'info': book_info, 'image_url': image_url}
            else:
                print("Cuốn sách đã tồn tại trong từ điển.")

        def get_book_info(book_name):
            return book_dictionary.get(book_name)

        # Lưu các giá trị href vào mảng
        for link in book_links:
            href = link.get_attribute("href")
            book_urls.append(href)

        # In ra toàn bộ giá trị href đã lưu được
        for url in book_urls:
            # Truy cập đường dẫn
            driver.get(url)
            
            try:
                # Chờ cho thông tin của cuốn sách được tải
                WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.CSS_SELECTOR, '[itemprop="name"]')))
                
                # Lấy thông tin tên sách
                book_name = driver.find_element(By.CSS_SELECTOR, 'h1[itemprop="name"]').text
                
                # Lấy thông tin tác giả
                book_author = driver.find_element(By.CSS_SELECTOR, '[itemprop="author"]').text
                
                # Lấy các thông tin từ thẻ span trong thẻ div có class là WorkMeta-detailsRow
                book_details_row = driver.find_elements(By.CSS_SELECTOR, '.WorkMeta-detailsRow')
                book_info = {}
                for row in book_details_row:
                    title = row.find_element(By.CSS_SELECTOR, '.WorkMeta-detailTitle').text
                    value = row.find_element(By.CSS_SELECTOR, '.WorkMeta-detailValue').text
                    book_info[title] = value
                
                # Lấy đường dẫn ảnh
                image_url = driver.find_element(By.CSS_SELECTOR, 'img[itemprop="image"]').get_attribute("src")
                
                try:
                    add_book(book_name, book_author, book_info, image_url)
                    print("Thêm sách vào từ điển thành công.")
                except Exception as e:
                    print("Lỗi khi thêm sách vào từ điển: ", e)
                    
            except TimeoutException:
                print("Quá thời gian chờ cho phép, không thể tìm thấy thông tin sách.")
            except StaleElementReferenceException:
                print("Phần tử không còn tồn tại trên trang nữa.")
            except NoSuchElementException:
                print("Không tìm thấy phần tử.")

        # Chuyển đổi dictionary thành JSON
        json_data = json.dumps(book_dictionary, indent=4, ensure_ascii=False)
        print(json_data)
        
        # Tạo tên file CSV cho từng thể loại
        category_filename = os.path.join(output_folder, f"{category_name}.csv")
        # Ghi dữ liệu vào file CSV
        with open(category_filename, mode='w', newline='', encoding='utf-8') as file:
            writer = csv.writer(file)
            writer.writerow(['Book Name', 'Authors', 'Info', 'Image URL'])
            for book_name, info in book_dictionary.items():
                writer.writerow([book_name, info['authors'], json.dumps(info['info']), info['image_url']])

    finally:
        # Đóng trình duyệt sau khi hoàn thành
        driver.quit()
