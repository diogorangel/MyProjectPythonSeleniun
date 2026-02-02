*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    String

*** Keywords ***
Take Evidence
    [Arguments]    ${step_name}
    ${test_name_clean}=    Replace String    ${TEST NAME}    ${SPACE}    _
    Create Directory       ${OUTPUT_DIR}/results
    Capture Page Screenshot    filename=results/web_${test_name_clean}_${step_name}.png

Taking Evidence Web Test
    Take Evidence    FINAL_STATE
    Close Browser