import pytest
import os
from selenium import webdriver
from selenium.webdriver.chrome.options import Options

# Esta função permite passar argumentos personalizados via linha de comando
def pytest_addoption(parser):
    parser.addoption("--headless", action="store_true", help="Run the browser in invisible mode.")

@pytest.fixture
def driver(request):
    """
    Fixture that manages the browser lifecycle (Setup and Teardown).
    """
    chrome_options = Options()
    
    # Checks if the user passed --headless in the command.
    if request.config.getoption("--headless"):
        chrome_options.add_argument("--headless")
        chrome_options.add_argument("--disable-gpu")
        chrome_options.add_argument("--window-size=1920,1080")

    # Inicializa o driver
    driver = webdriver.Chrome(options=chrome_options)
    driver.implicitly_wait(10)
    driver.maximize_window()

    yield driver  #Here's where the test takes place

# Teardown: Closes the browser after the test ends
    driver.quit()

@pytest.fixture(autouse=True)
def create_evidence_dir():
    """Ensures the evidence folder exists before each test."""
    if not os.path.exists("evidence"):
        os.makedirs("evidence")