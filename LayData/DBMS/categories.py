import requests
from bs4 import BeautifulSoup
import csv

# URL của trang web chứa dữ liệu cần thu thập
url = 'https://www.thriftbooks.com/sitemap/'

# Thu thập nội dung của trang web
response = requests.get(url)
soup = BeautifulSoup(response.text, 'html.parser')

# Tìm tất cả các thẻ div có class là "SiteMap-Item"
sitemap_items = soup.find_all('div', class_='SiteMap-Item')

# Mở file CSV để ghi dữ liệu
with open('categories.csv', mode='w', newline='', encoding='utf-8') as csvfile:
    fieldnames = ['Tên thẻ a', 'Link href']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
    
    writer.writeheader()
    
    # Duyệt qua từng thẻ div và ghi dữ liệu vào file CSV
    for item in sitemap_items:
        a_tag = item.find('a')
        if a_tag:
            category_name = a_tag.text.strip()
            href_link = a_tag.get('href')
            writer.writerow({'Tên thẻ a': category_name, 'Link href': 'https://www.thriftbooks.com' + href_link})

print("Dữ liệu đã được ghi vào file categories.csv")
