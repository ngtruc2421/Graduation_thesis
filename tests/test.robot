*** Settings ***
Library    SeleniumLibrary
Test Setup    Sets up
Test Teardown    Close Browser
*** Variables ***
${URL}    https://bearstore-testsite.smartbear.com/
*** Test Cases ***
Log in not success
    [Tags]    Low
    Click Element    css:.fa-user-circle
    Input Text    css:#UsernameOrEmail    @trantruc2001
    Input Password    css:#Password    TranPhuongNgocTruc200420011
    Click Element    css:.btn-login
    Page Should Contain    Login was unsuccessful. Please correct the errors and try again.
Log in success
    [Tags]    High
    Click Element    css:.fa-user-circle
    Input Text    css:#UsernameOrEmail    @trantruc2001
    Input Password    css:#Password    TranPhuongNgocTruc20042001
    Click Element    css:.btn-login
    Page Should Contain    Welcome to our store.

*** Keywords ***
Sets up
    Open Browser    ${URL}    chrome
    Maximize Browser Window