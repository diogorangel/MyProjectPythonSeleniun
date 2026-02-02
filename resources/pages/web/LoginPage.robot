*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    String

*** Variables ***
${LOGIN_USER_INPUT}     id:user-name
${LOGIN_PASS_INPUT}     id:password
${LOGIN_BUTTON}         id:login-button
${HEADER_TITLE}         class:title

*** Keywords ***
Login With Credentials
    [Arguments]    ${username}    ${password}
    Input Text      ${LOGIN_USER_INPUT}    ${username}
    Input Password  ${LOGIN_PASS_INPUT}    ${password}
    Click Button    ${LOGIN_BUTTON}

Verify Success Login
    Element Should Be Visible    ${HEADER_TITLE}
    Element Text Should Be       ${HEADER_TITLE}    Products