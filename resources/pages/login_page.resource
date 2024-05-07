*** Settings ***
Resource    base_page.resource
Library    SeleniumLibrary

*** Variables ***
${USERNAME_FIELD}    css:#UsernameOrEmail
${PASSWORD_FIELD}    css:#Password
${LOG_IN_BUTTON}    css:.btn-login
${URL_LOGIN}    ${URL_BASE}login  
${MESSAGE_SUCCESS}    Welcome to our store.  
${MESSAGE_FAIL}    Login was unsuccessful. Please correct the errors and try again. 
 
*** Keywords ***
Input Text For A Field
    [Arguments]    ${FIELD}    ${TEXT}
    Clear Element Text    ${FIELD}
    Input Text    ${FIELD}    ${TEXT}

Click log in button
    Click Element    ${LOG_IN_BUTTON}

Verify Success
    Page Should Contain    ${MESSAGE_SUCCESS}

Verify Fail
    Page Should Contain    ${MESSAGE_FAIL}

Log In With ${NAME} and ${PASS}
    Input Text For A Field    ${USERNAME_FIELD}    ${NAME}
    Input Text For A Field    ${PASSWORD_FIELD}    ${PASS}
    Click log in button
    Verify Fail