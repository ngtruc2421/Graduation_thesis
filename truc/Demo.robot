*** Settings ***
Library    SeleniumLibrary
Library    Process
Test Setup    Open Browser    ${URLMain}    chrome
*** Variables ***
# ${URLLogin}    https://bearstore-testsite.smartbear.com/login?returnUrl=%2F
${URLMain}    https://bearstore-testsite.smartbear.com/
${INPUTTag}    class=instasearch-term
*** Test Cases ***
Search the ball
    Input Text    ${INPUTTag}    ball 
    Click Element    class=instasearch-button
    Page Should Contain    Search result for ball
    Close Browser    
Log in not success
    Click Element    class=fa-user-circle
    Input Text    id=UsernameOrEmail    @trantruc2001
    Input Password    id=Password    TranPhuongNgocTruc200420011
    Click Element    class=btn-login
    Page Should Contain    Login was unsuccessful. Please correct the errors and try again.
    Close Browser
Log in success
    Click Element    class=fa-user-circle
    Input Text    id=UsernameOrEmail    @trantruc2001
    Input Password    id=Password    TranPhuongNgocTruc20042001
    Click Element    class=btn-login
    Page Should Contain    Welcome to our store.
    Close Browser
