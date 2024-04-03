import json
import csv
import os
import requests
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import NoSuchElementException, StaleElementReferenceException, TimeoutException

# Khởi tạo trình duyệt
driver = webdriver.Chrome()

try:
    url = "https://thienlong.vn/collections/san-pham-rang-dong"
    # Truy cập vào trang web
    response = requests.get(url)
    if response.status_code == 200:
        driver.get(url)
    else:
        print("Không thể truy cập trang web.")

    # Tìm các thẻ a có class image_thumb và lấy giá trị href
    vpp_links = driver.find_elements(By.CSS_SELECTOR, "a.image_thumb")

    # Mảng để lưu trữ các giá trị href
    vpp_urls = []

    vpp_dictionary = {}

    def add_vpp(vpp_name, image_url, vpp_brand):
        if vpp_name not in vpp_dictionary:
            vpp_dictionary[vpp_name] = {'image_url': image_url, 'vpp_brand': vpp_brand}
            print("Thêm sách vào từ điển thành công.")
        else:
            print("Cuốn sách đã tồn tại trong từ điển.")

    def get_book_info(vpp_name):
        return vpp_dictionary.get(vpp_name)

    # Lưu các giá trị href vào mảng
    for link in vpp_links:
        href = link.get_attribute("href")
        vpp_urls.append(href)

    # In ra toàn bộ giá trị href đã lưu được
    for url in vpp_urls:
        # Truy cập đường dẫn
        driver.get(url)
        
        try:
            # Lấy thông tin tên sách
            vpp_name = driver.find_element(By.CSS_SELECTOR, 'h1.title-product').text
            
            # Lấy đường dẫn ảnh
            image_url = driver.find_element(By.CSS_SELECTOR, 'img.lazyload.img-fluid.loaded').get_attribute("data-img")
            
            # Lấy thương hiệu
            vpp_brand = driver.find_element(By.CSS_SELECTOR, 'span.status_name').text.strip()
            
            try:
                add_vpp(vpp_name, image_url, vpp_brand)
            except Exception as e:
                print("Lỗi khi thêm sách vào từ điển: ", e)
                
        except TimeoutException:
            print("Quá thời gian chờ cho phép, không thể tìm thấy thông tin sách.")
        except StaleElementReferenceException:
            print("Phần tử không còn tồn tại trên trang nữa.")
        except NoSuchElementException:
            print("Không tìm thấy phần tử.")

    # Chuyển đổi dictionary thành JSON
    json_data = json.dumps(vpp_dictionary, indent=4, ensure_ascii=False)
    print(json_data)
    
    # Ghi dữ liệu vào file CSV
    with open("vpp.csv", mode='w', newline='', encoding='utf-8') as file:
        writer = csv.writer(file)
        writer.writerow(['Book Name', 'Image URL', 'Brand'])
        for vpp_name, info in vpp_dictionary.items():
            writer.writerow([vpp_name, info['image_url'], info['vpp_brand']])

finally:
    # Đóng trình duyệt sau khi hoàn thành
    driver.quit()
