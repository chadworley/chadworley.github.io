from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By

driver = webdriver.Firefox()
driver.get("https://dashboard.blooket.com/create")

x = input("Waiting for manual date to be entered. Enter YES when done.")

# driver.get("https://dashboard.blooket.com/create")

elem = driver.find_element(By.NAME, "_input_x45s0_220")
elem.clear()
elem.send_keys("MY TITLE")
elem.send_keys(Keys.RETURN)

# driver.close()
