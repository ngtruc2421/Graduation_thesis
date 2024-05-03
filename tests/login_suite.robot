*** Settings ***
Resource    ../resources/pages/login_page.resource
Resource    ../resources/pages/base_page.resource
Test Setup    Open Web    ${URL_LOGIN}
Test Teardown    Close Browser
*** Variables ***
${PASS_RIGHT}=    TranPhuongNgocTruc20042001
${PASS_WRONG}=    TranPhuongNgocTruc200420011
${USER_NAME}=    @trantruc2001
${EMPTY}=    
*** Test Cases ***
Log in to system success
    Input Text For A Field    ${USERNAME_FIELD}    ${USER_NAME}
    Input Text For A Field    ${PASSWORD_FIELD}    ${PASS_RIGHT}
    Log In
    Verify Success
Log in to system Fail
    [Template]    Log In With ${NAME} and ${PASS}
    ${USER_NAME}    ${PASS_WRONG}
    ${USER_NAME}    ${EMPTY}        
    ${EMPTY}    ${PASS_WRONG}    
    ${EMPTY}    ${EMPTY}
    