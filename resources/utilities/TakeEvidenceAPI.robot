*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    OperatingSystem
Library    String

*** Keywords ***

Save API Evidence
    [Arguments]    ${response}    ${step_name}
    ${test_name_clean}=    Replace String    ${TEST NAME}    ${SPACE}    _
    Create Directory       ${OUTPUT_DIR}/evidence
    ${evidence_path}=      Set Variable    ${OUTPUT_DIR}/evidence/api_${test_name_clean}_${step_name}.txt
    Create File            ${evidence_path}    Status Code: ${response.status_code}\n\nResponse Body:\n${response.text}
    Log    Evidence saved at: ${evidence_path}

Saving API Evidence
    [Arguments]    ${response}    ${step_name}
    Save API Evidence    ${response}    ${step_name}