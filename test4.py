import requests

base_url = "https://elearning.ntu.edu.vn/enrol/index.php?id="
error_404_links = []

# Tạo session
session = requests.Session()

# Thực hiện đăng nhập - thay username và password bằng thông tin đăng nhập của bạn
login_payload = {
    'username': '64132989',
    'password': 'Vinhveer0986209261'
}

login_url = 'https://elearning.ntu.edu.vn/login/index.php'
session.post(login_url, data=login_payload)

for id in range(10800, 30001):
    url = f"{base_url}{id}"
    response = session.get(url)
    if response.status_code == 404:
        error_404_links.append(url)
    print(f"Checking {url}: Status Code {response.status_code}")

print("Links returning 404 error:")
for link in error_404_links:
    print(link)
