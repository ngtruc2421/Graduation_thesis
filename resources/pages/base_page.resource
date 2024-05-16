*** Settings ***
Resource    ../../configurations/config.resource
*** Variables ***
${EMPTY}=    

*** Keywords ***
Access to ${URL}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
Click on the web element
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Wait Until Element Is Enabled    ${locator}
    Click Element    ${locator}
Click on ${LOCATOR} button
    Click on the web element    ${LOCATOR}
Input content 
    [Arguments]    ${TEXT}    ${LOCATOR}    
    Wait Until Element Is Visible    ${LOCATOR}      
    Clear Element Text    ${LOCATOR}
    Input Text    ${LOCATOR}    ${TEXT}

Display the message
    [Arguments]    ${TEXT}    ${LOCATOR}
    Wait Until Element Is Visible    ${LOCATOR}
    Page Should Contain    ${TEXT}
# Log error if keyword fail
#     [Arguments]    ${KEY}    @{VALUE}
#     ${results}    Run Keyword And Ignore Error    ${KEY}    ${VALUE}
#     Run Keyword If    '${results[0]}' != 'PASS'    Log    ${results[1]}    ERROR
#     RETURN    ${results}
Turn off log
    [Arguments]    ${Keyword}    ${Values}
    Set Log Level    NONE
    ${Results}    Run Keyword    ${Keyword}    ${Values}
    Set Log Level    INFO
    RETURN    ${Results}