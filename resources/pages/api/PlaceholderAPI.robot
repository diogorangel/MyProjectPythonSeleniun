*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    OperatingSystem
Library    String

*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com

*** Keywords ***
Create API Session
    Create Session    api_session    ${BASE_URL}    verify=True

Get Post By ID
    [Arguments]    ${post_id}
    ${response}    GET On Session    api_session    /posts/${post_id}    expected_status=any
    RETURN         ${response}

Validate Post Title
    [Arguments]    ${response}    ${expected_title}
    Status Should Be    200    ${response}
    ${json}=            Set Variable    ${response.json()}
    ${actual_title}=    Get From Dictionary    ${json}    title
    Should Be Equal As Strings    ${actual_title}    ${expected_title}

Finishing API Test
    [Arguments]    ${response}
