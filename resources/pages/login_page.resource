*** Settings ***
Resource    base_page.resource
Resource    ../../configurations/config.resource
Library    SeleniumLibrary

*** Variables ***
${USERNAME_ELE}    css:#UsernameOrEmail
${PASSWORD_ELE}    css:#Password
${MESS_SUCCESS_ELE}    css:.h2
${MESS_FAIL_ELE}    css:.validation-summary-errors
${LOGIN_BTN_ELE}    css:.btn-login
${MESS_SUCCESS}    Welcome to our store.  
${MESS_FAIL}    Login was unsuccessful. Please correct the errors and try again.
${PASS_RIGHT}=         TranPhuongNgocTruc20042001
${PASS_WRONG}=         TranPhuongNgocTruc200420011
${USER_NAME_RIGHT}=    @trantruc2001
${USER_NAME_WRONG}=    @trantruc 
*** Keywords ***
Input username
    [Arguments]    ${TEXT}
    Input content    ${TEXT}    ${USERNAME_ELE}
Input pass
    [Arguments]    ${TEXT}
    Input content    ${TEXT}    ${PASSWORD_ELE}    

Click the Login button
    Click on ${LOGIN_BTN_ELE} button

Display the success title on the login page
    Display the message    ${MESS_SUCCESS}    ${MESS_SUCCESS_ELE}

Display the fail title on the login page
    Display the message    ${MESS_FAIL}    ${MESS_FAIL_ELE}

Login with ${NAME} and ${PASS}
    Input username    ${NAME}
    Input pass    ${PASS}
    Click the Login button    
 #TC
Log in fail with ${NAME} and ${PASS}
    Log in with ${NAME} and ${PASS}
    Display the fail title on the login page