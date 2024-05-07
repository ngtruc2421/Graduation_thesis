*** Settings ***
Resource          ../resources/pages/login_page.resource
Resource          ../resources/pages/base_page.resource
Resource          ../configurations/config.resource
Test Setup        Access to ${URL_LOGIN}
Test Teardown     Close Browser
*** Variables ***
${PASS_RIGHT}=         TranPhuongNgocTruc20042001
${PASS_WRONG}=         TranPhuongNgocTruc200420011
${USER_NAME_RIGHT}=    @trantruc2001
${USER_NAME_WRONG}=    @trantruc
${EMPTY}=    
*** Test Cases ***
Verify that users can log in to system success
    Input username    ${USER_NAME_RIGHT}
    Input pass        ${PASS_RIGHT}
    Click log in button
    Verify that users log in success
Verify that users will log in to system fail
    [Template]    Log in fail with ${NAME} and ${PASS}
    ${USER_NAME_RIGHT}    ${PASS_WRONG}
    ${USER_NAME_WRONG}    ${PASS_RIGHT}
    ${USER_NAME_RIGHT}    ${EMPTY}        
    ${EMPTY}              ${PASS_WRONG}    
    ${EMPTY}              ${EMPTY}

    
