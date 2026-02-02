from selenium import webdriver
from pages.LoginPage import LoginPage
import pytest

@pytest.fixture
def driver():
    driver = webdriver.Chrome()
    driver.implicitly_wait(10)
    yield driver
    driver.quit()

def test_login_sucessfull(driver):
    driver.get("https://www.saucedemo.com/")
    login_page = LoginPage(driver)
    login_page.take_screenshot("open_login_page")
    login_page.login("standard_user", "secret_sauce")
    assert login_page.get_title() == "Products"
    login_page.take_screenshot("success_login")