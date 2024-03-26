*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Log in not success
    [Tags]    Low
    Click Element    class=fa-user-circle
    Input Text    id=UsernameOrEmail    @trantruc2001
    Input Password    id=Password    TranPhuongNgocTruc200420011
    Click Element    class=btn-login
    Page Should Contain    Login was unsuccessful. Please correct the errors and try again.
Log in success
    [Tags]    High
    Click Element    class=fa-user-circle
    Input Text    id=UsernameOrEmail    @trantruc2001
    Input Password    id=Password    TranPhuongNgocTruc20042001
    Click Element    class=btn-login
    Page Should Contain    Welcome to our store.