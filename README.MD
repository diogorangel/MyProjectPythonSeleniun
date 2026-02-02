# Python Automated Testing Suite (Selenium & Requests)
Author : Diogo Rangel (@diogorangel)

This project is a professional automated testing framework built with **Python**, utilizing the **Page Object Model (POM)** pattern. It covers both **Web UI** and **API** testing, focusing on scalability, clean code, and automated evidence generation.



## 🛠️ Technologies
* **Language:** Python 3.10+
* **Test Framework:** Pytest
* **Web Automation:** Selenium WebDriver
* **API Automation:** Requests
* **Reporting:** Pytest-HTML
* **Design Pattern:** Page Object Model (POM)

---

## 📂 Project Structure

```text
├── pages/               # Page Object Classes (UI Locators & Actions)
│   ├── base_page.py     # Common methods & Evidence logic
│   └── login_page.py    # Login specific actions
├── tests/               # Test Suites
│   ├── test_web.py      # UI Test Scenarios
│   └── test_api.py      # API Test Scenarios
├── utils/               # Helpers & API Clients
├── evidence/            # Screenshots (.png) and API Logs (.txt)
└── conftest.py          # Pytest Fixtures and Configurations

🚀 How to Run the Tests
1. Setup Environment
First, ensure you have a virtual environment active and install the dependencies:

Bash
pip install -r requirements.txt
2. Execute All Tests
Run the entire suite and generate a professional HTML report:

Bash
pytest --html=results/report.html --self-contained-html
3. Selective Execution
🧪 Running Tests Individually
If you want to run only a specific part of the suite (Web or API), you can point Pytest directly to the desired file or directory.

1. Running Only Web Tests
To execute only the browser automation tests, use:

Bash
pytest tests/web/test_login_web.py
Note: Ensure your file is named with the test_ prefix so Pytest can discover the test cases inside it.

2. Running Only API Tests
To execute only the backend/API validation tests, use:

Bash
pytest tests/api/test_validate_title_api.py
3. Running by Folder
You can also run all tests within a specific category by pointing to the folder:

All Web Tests: pytest tests/web/

All API Tests: pytest tests/api/
Run only API Tests:

Bash
pytest tests/test_api.py
Run only Web Tests:

Bash
pytest tests/test_web.py
Run with Verbose Output:

Bash
pytest -v

Running Tests from a Specific Folder: If you want to run everything inside the tests/ directory only:

PowerShell
pytest tests/

With Professional HTML Report: This generates a full dashboard where you can see pass/fail status and execution time.

PowerShell
pytest --html=results/report.html --self-contained-html
With Execution Details (Verbose): Shows exactly which test function is running in real-time.

PowerShell
pytest -v
Running Tests from a Specific Folder: If you want to run everything inside the tests/

📸 Evidence Generation
The framework automatically handles evidence for every test execution:

Web: Screenshots are captured at critical steps and saved in the /evidence folder.

API: Request and Response data (Status Code, JSON Body) are saved as .txt files for auditing.

⚙️ CI/CD Integration
This project is ready for GitHub Actions. It can run in headless mode (without opening a browser window), making it perfect for Continuous Integration pipelines.

YAML
# Example command for CI
pytest --html=results/report.html --self-contained-html
💡 Key Commands Explained
pytest: The core engine that discovers and runs functions prefixed with test_.

--html=results/report.html: Plugin that creates a visual dashboard of the results.

--self-contained-html: Ensures all CSS/Images are embedded in a single HTML file for easy sharing.

conftest.py: A special pytest file that shares "fixtures" (like browser setup/teardown) across all tests without duplicating code.