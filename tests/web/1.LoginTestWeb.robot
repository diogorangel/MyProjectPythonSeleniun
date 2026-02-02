*** Settings ***
Resource         ../resources/pages/web/LoginPage.robot
Resource         ../resources/utilities/TakeEvidenceWeb.robot 
Test Setup       Open Browser    ${URL}    ${BROWSER}
Test Teardown    Taking Evidence Web Test

*** Variables ***
${URL}           https://www.saucedemo.com/
${BROWSER}       chrome

*** Test Cases ***
Scenario: Successful login on SauceDemo
    TakeEvidenceWeb.Take Evidence    BEFORE_LOGIN
    Login With Credentials        standard_user    secret_sauce
    TakeEvidenceWeb.Take Evidence    AFTER_LOGIN
    Verify Success Login
    TakeEvidenceWeb.Take Evidence    AFTER_VERIFICATION