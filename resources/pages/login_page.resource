*** Settings ***
Resource    base_page.resource
Resource    ../../configurations/config.resource
Library    SeleniumLibrary

*** Variables ***
${USERNAME_CSS}    css:#UsernameOrEmail
${PASSWORD_CSS}    css:#Password
${MESS_SUCCESS_CSS}    css:.h2
${MESS_FAIL_CSS}    css:.validation-summary-errors
${LOGIN_BTN_CSS}    css:.btn-login
${MESS_SUCCESS}    Welcome to our store.  
${MESS_FAIL}    Login was unsuccessful. Please correct the errors and try again.
${PASS_RIGHT}=         TranPhuongNgocTruc20042001
${PASS_WRONG}=         TranPhuongNgocTruc200420011
${USER_NAME_RIGHT}=    @trantruc2001
${USER_NAME_WRONG}=    @trantruc 
*** Keywords ***
Input username
    [Arguments]    ${TEXT}
    Input ${TEXT} For ${USERNAME_CSS}
Input pass
    [Arguments]    ${TEXT}
    Input ${TEXT} For ${PASSWORD_CSS}    

Click log in button
    Click on ${LOGIN_BTN_CSS} button

Verify that users log in success
    Wait Until Element Is Visible    ${MESS_SUCCESS_CSS}
    Page Should Contain    ${MESS_SUCCESS}

Verify that users log in fail
    Wait Until Element Is Visible    ${MESS_FAIL_CSS}
    Page Should Contain    ${MESS_FAIL}

Log in fail with ${NAME} and ${PASS}
    Input username    ${NAME}
    Input pass    ${PASS}
    Click log in button
    Verify that users log in fail
