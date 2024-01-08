import time
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.chrome.options import Options
import os

# Path definitions
accounts_path = "D:\Desktop\Python_Simple\CheckAccount\acc.txt"
results_path = "D:\Desktop\Python_Simple\CheckAccount\ketqua.txt"
downloads_path = "D:\Downloads"

# Read account credentials from file
accounts = []
with open(accounts_path, "r") as file:
    for line in file:
        line = line.strip()
        if line:
            username, password = line.split(" ")
            accounts.append((username, password))

with open(results_path, "w", encoding="utf-8") as fileketqua:
    for account in accounts:
        username, password = account

        options = Options()  # Set download preferences
        options.add_experimental_option("prefs", {
            "download.default_directory": downloads_path,
            "download.prompt_for_download": False,
        })

        driver = webdriver.Chrome(options=options)

        try:
            # Access login page and perform login actions
            driver.get("https://quanlydoanvien.doanthanhnien.vn/login")
            # ... (rest of login code) ...

            # Navigate to the download page
            driver.get("https://quanlydoanvien.doanthanhnien.vn/he-thong/ds-doan-vien")
            # ... (actions to trigger the download) ...

            # Wait for download to complete
            while not os.path.exists(os.path.join(os.getcwd(), "download.xlsx")):  # Adjust filename
                time.sleep(1)

            # Rename and move the downloaded file
            original_filename = "download.xlsx"  # Adjust if needed
            new_filename = f"{username}.xlsx"
            os.rename(original_filename, new_filename)
            os.replace(new_filename, os.path.join(downloads_path, new_filename))

            print(f"Download complete for {username}.")
            fileketqua.write(f"Download {username} OK.\n")
        except Exception as e:
            print(f"Error occurred for {username}: {e}")
            fileketqua.write(f"Download {username} failed.\n")
        finally:
            driver.quit()

        time.sleep(3)
