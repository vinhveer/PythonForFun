import os
import requests
from bs4 import BeautifulSoup
from urllib.parse import urljoin
from PIL import Image
from io import BytesIO

def download_and_convert_images(url, download_folder, target_format='PNG'):
    """
    Hàm tải xuống và chuyển đổi tất cả ảnh từ một trang web sang định dạng chỉ định.

    Args:
        url (str): URL của trang web.
        download_folder (str): Tên thư mục để lưu ảnh tải xuống.
        target_format (str, optional): Định dạng ảnh mong muốn (mặc định là 'PNG').
    """

    response = requests.get(url)
    response.raise_for_status()  # Kiểm tra lỗi trong quá trình tải trang

    soup = BeautifulSoup(response.content, 'html.parser')
    img_tags = soup.find_all('img')

    os.makedirs(download_folder, exist_ok=True)  # Tạo thư mục nếu chưa tồn tại

    img_counter = 1

    for img in img_tags:
        img_url = img.get('src')
        if not img_url:
            continue

        img_url = urljoin(url, img_url)

        try:
            img_response = requests.get(img_url)
            img_response.raise_for_status()

            # Xử lý đặc biệt cho ảnh AVIF
            if img_url.endswith('.avif'):
                # Sử dụng Pillow để mở và chuyển đổi ảnh AVIF
                with Image.open(BytesIO(img_response.content)) as img_data:
                    img_data = img_data.convert("RGB")  # Chuyển sang RGB để tương thích với PNG

            else:
                # Mở các định dạng ảnh khác (PNG, JPG,...)
                img_data = Image.open(BytesIO(img_response.content))

        except (IOError, requests.exceptions.RequestException):
            print(f"Lỗi khi tải hoặc mở ảnh từ URL: {img_url}")
            continue

        # Tạo tên file mới dựa trên định dạng mong muốn
        img_name = f"image_{img_counter}.{target_format.lower()}"
        img_path = os.path.join(download_folder, img_name)

        # Lưu ảnh với định dạng mới
        img_data.save(img_path, format=target_format)

        print(f"Đã tải và chuyển đổi: {img_name}")

        img_counter += 1

# Sử dụng hàm
url = "https://www.google.com/" 
download_folder = "downloaded_images"
download_and_convert_images(url, download_folder, target_format='PNG')  # Chuyển sang PNG
