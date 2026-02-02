from selenium.webdriver.common.by import By
from utils.base_evidence import Base_Evidence

class LoginPage(Base_Evidence):
    # Locators
    USER_INPUT = (By.ID, "user-name")
    PASS_INPUT = (By.ID, "password")
    LOGIN_BUTTON = (By.ID, "login-button")
    TITLE = (By.CLASS_NAME, "title")

    def login(self, username, password):
        self.driver.find_element(*self.USER_INPUT).send_keys(username)
        self.driver.find_element(*self.PASS_INPUT).send_keys(password)
        self.take_screenshot("before_click")
        self.driver.find_element(*self.LOGIN_BUTTON).click()

    def get_title(self):
        return self.driver.find_element(*self.TITLE).text