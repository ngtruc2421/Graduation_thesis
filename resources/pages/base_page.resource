*** Settings ***
Resource    ../../configurations/config.resource
*** Variables ***
${EMPTY}=

*** Keywords ***
Access to ${URL}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
Click on ${LOCATOR} button
    Wait Until Element Is Visible    ${LOCATOR}
    Click Element    ${LOCATOR}
Input ${TEXT} For ${LOCATOR}
    Wait Until Element Is Visible    ${LOCATOR}      
    Clear Element Text    ${LOCATOR}
    Input Text    ${LOCATOR}    ${TEXT}

Verify a case
    [Arguments]    ${TEXT}    ${LOCATOR}
    Wait Until Element Is Visible    ${LOCATOR}
    Page Should Contain    ${TEXT}