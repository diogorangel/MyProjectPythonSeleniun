🚀 Robot Framework Automation Project (Web & API)
Author : Diogo Rangel (@diogorangel)
This project demonstrates automated functional testing for both Web and API environments using Python and Robot Framework. It implements the Page Object Model (POM) pattern to ensure code maintainability and scalability.

🧪 Scenarios Included

Web: Login flow on the SauceDemo website. 


API: Validation of GET endpoints using the JSONPlaceholder API. 

🛠️ Requirements & Setup
Prerequisites
Python 3.x installed.

Chrome Browser (and ChromeDriver matching your version).

Installation
Clone the repository:

Bash
git clone https://github.com/youruser/your-repo.git
cd your-repo
Create and activate a Virtual Environment (VENV):

PowerShell
# Windows
python -m venv venv
.\venv\Scripts\activate
Install dependencies:

PowerShell
pip install -r requirements.txt
🏃 Execution Guide
You can run tests in multiple ways depending on your needs:

1. Run all tests
This command executes every .robot file inside the tests/ folder.

PowerShell
robot -d ./results tests/
2. Run a specific test suite (Web or API)
PowerShell
# Web only
robot -d ./results tests/test_web.robot

# API only
robot -d ./results tests/test_api.robot
3. Run a specific test case by name
Useful when you are working on a single feature and don't want to wait for the whole suite.

PowerShell
robot -d ./results -t "Scenario: Successful login on SauceDemo" tests/
4. Run tests with a specific Tag
(Optional: If you add [Tags] smoke to your tests)

5. Generate Metrics
robotmetrics --inputpath ./results --output output.xml

PowerShell
robot -d ./results -i smoke tests/
📊 Maintenance Commands for Engineers
Update/Generate Requirements
If you install a new library (like robotframework-faker), update the requirements file:

PowerShell
pip freeze > requirements.txt
Clean Logs/Reports
To clear the results folder before a fresh run:

PowerShell
Remove-Item -Recurse -Force ./results/*
Dry Run
To check for syntax errors without actually opening the browser or hitting the API:

PowerShell
robot --dryrun tests/
📁 Project Structure (POM)
Plaintext
├── tests/              # Test scripts (Gherkin-style scenarios) [cite: 1, 3]
├── resources/          # Keywords and Logic (Page Object Model)
│   ├── pages/          # Web elements and actions [cite: 4]
│   └── api/            # API session and request handling [cite: 2]
├── results/            # Automated reports and logs (created after execution)
├── requirements.txt    # Project dependencies
└── .gitignore          # Files to ignore (venv, results, etc.)
💡 Pro Tip for Portfolios
After running the tests, Robot Framework generates an index.html inside the /results folder.

Challenge: Take a screenshot of your successful test report and add it to a folder named screenshots/ in this repo, then link it here in the README!