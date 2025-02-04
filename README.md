# RobotFrameworkCucumber-CuraHealthCare
# Project Overview
This project automates testing for the Cura HealthCare medical website using Selenium with Robot Framework and Gherkin syntax. 
It provides end-to-end test automation scenarios for various functionalities, ensuring the reliability and stability of the application
# Features
- **Automated UI Testing:** Uses Selenium WebDriver with Robot Framework to validate web elements and user interactions.
- **BDD Approach:** Implements Gherkin syntax for better readability and collaboration with stakeholders.
- **Test Reports:** Generates structured test reports for analysis and debugging.
- **Reusable Keywords:** Implements modular and reusable test steps to improve maintainability.
# Technologies Used
- **Robot Framework**
- **Selenium Library for Robot Framework**
- **Gherkin Syntax(BDD)**
- **Python**
- **Pip (for dependency management)**
# Installation
# Prerequisites
 Ensure you have the following installed on your system:
 **Python (>= 3.x)** and **Pip (Python package manager)**
# Setup Instructions
**1.Clone the repository:**
```sh 
git clone https://github.com/mamedras/RobotFrameworkCucumber-CuraHealthCare.git
cd RobotFrameworkCucumber-CuraHealthCare
```
**2. Install dependencies:**
```sh
pip install -r requirements.txt
```
**3.Verify installation:**
```sh
robot --version
```
# Running Tests
- **Execute the test suite using the following command:** 
```sh
robot -d Results Test_Cases/
```
- **The test results and logs will be available in the Results folder**
- **You can also execute specific test cases using:**
``` sh
robot -t "Test Case Name" tests/
```
# Project Structure
``` sh
RobotFrameworkCucumber-CuraHealthCare/
│── pythonProject/
│──  Keywords/
│    ├── Home_Page.robot
│    ├── Login_Page.robot
│──  locators/
│    ├── HomePage.py
│    ├── Login.py
│    ├── Properties.py
│──  Setup/
│    ├── Test_Base.robot
│──  Test_Cases/
│    ├── Booking.robot
│    ├── Login_Test.robot
│── .gitignore
│── Results/
│── README.md
```
# Example Test Case
- **Below is a sample test case using Robot Framework with Gherkin syntax:**
  ```sh
   Feature: Login Functionality
  Scenario: User logs in successfully
    Given the user is on the login page
    When the user enters valid credentials
    Then the user should be redirected to the homepage
  ```
# Reporting
- **To generate an HTML test report, use:**
``` sh
robot --outputdir Results tests/
```
- **Then, open Results/log.html in a browser.**


