import os
from datetime import datetime

class Base_Evidence:
    def __init__(self, driver):
        self.driver = driver

    def take_screenshot(self, step_name):
        if not os.path.exists("evidence"):
            os.makedirs("evidence")
        
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        filename = f"evidence/web_{step_name}_{timestamp}.png"
        self.driver.save_screenshot(filename)
        print(f"Screenshot salva em: {filename}")