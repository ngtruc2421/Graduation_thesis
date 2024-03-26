*** Settings ***
Documentation    This is my test documentation
...              You can see. If you want write 
...              so long data. You can write this  
Library    SeleniumLibrary
Library    Process
Test Setup    Open Browser    ${URLMain}    chrome
Test Teardown    Close Browser
*** Variables ***
# ${URLLogin}    https://bearstore-testsite.smartbear.com/login?returnUrl=%2F
${URLMain}    https://bearstore-testsite.smartbear.com/
${INPUTTag}    css:.instasearch-term
*** Test Cases ***
Search the ball
    [Tags]    Medium
    Input Text    ${INPUTTag}    ball 
    Click Element    class=instasearch-button
    Page Should Contain    Search result for ball
    [Teardown]    none
Click on many button
    [Template]    Click on the button
    ${a}
    ${b}
    ${c}
Demo Behaviour driven style
    Given Location Should Be    ${INPUTTag}
    When Length Should Be    item    length
    Then Should Be Empty    item
*** Keywords ***
Click on the button
    [Arguments]    ${location}
    Click Element    ${location}