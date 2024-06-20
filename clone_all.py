import requests
import subprocess
import os

def clone_repos(username):
    # API URL để lấy danh sách repositories của người dùng
    url = f'https://api.github.com/users/{username}/repos'
    
    # Gửi request để lấy dữ liệu
    response = requests.get(url)
    
    # Kiểm tra nếu request thành công
    if response.status_code != 200:
        print(f"Không thể lấy dữ liệu từ GitHub API. Status code: {response.status_code}")
        return
    
    # Chuyển dữ liệu sang định dạng JSON
    repos = response.json()
    
    # Kiểm tra nếu người dùng có repository nào không
    if not repos:
        print(f"Người dùng {username} không có repository nào.")
        return
    
    # Tạo thư mục để chứa các repository nếu chưa tồn tại
    if not os.path.exists(username):
        os.makedirs(username)
    
    # Duyệt qua tất cả các repository và clone chúng
    for repo in repos:
        repo_name = repo['name']
        clone_url = repo['clone_url']
        repo_path = os.path.join(username, repo_name)
        
        if os.path.exists(repo_path):
            print(f"Repository {repo_name} đã tồn tại. Bỏ qua...")
        else:
            print(f"Cloning {repo_name}...")
            subprocess.run(['git', 'clone', clone_url, repo_path])

# Nhập GitHub username từ người dùng
username = input("Nhập GitHub username: ")

# Gọi hàm clone_repos với username được nhập
clone_repos(username)
