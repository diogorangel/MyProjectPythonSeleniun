*** Settings ***
Resource    ../resources/pages/api/PlaceholderAPI.robot
Resource    ../resources/utilities/TakeEvidenceAPI.robot


*** Test Cases ***
Scenario: Validate specific post return via API
    Create API Session
    ${response}    Get Post By ID    1
   Save API Evidence    ${response}    STEP_1_GET_POST
    Validate Post Title    ${response}    sunt aut facere repellat provident occaecati excepturi optio reprehenderit
    Save API Evidence    ${response}    STEP_1_POST_TITLE_VALIDATED
    Saving API Evidence    ${response}    FINAL_STATE