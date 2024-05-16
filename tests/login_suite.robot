*** Settings ***
Resource          ../resources/pages/login_page.resource
Resource          ../resources/pages/base_page.resource
Resource          ../configurations/config.resource
Test Setup        Access to ${URL_LOGIN}
Test Teardown     Close Browser
*** Test Cases ***
Verify that users will log in to system fail
    [Template]    Log in fail with ${NAME} and ${PASS}
    ${USER_NAME_RIGHT}    ${PASS_RIGHT}
    ${USER_NAME_WRONG}    ${PASS_RIGHT}
    ${USER_NAME_RIGHT}    ${EMPTY}        
    ${EMPTY}              ${PASS_WRONG}    
    ${EMPTY}              ${EMPTY}
Verify that users can log in to system success
    TRY
        Turn off log    Input username    ${USER_NAME_RIGHT}
        Input pass        ${PASS_RIGHT}
        Click the Login button
        Display the success title on the login page
    EXCEPT    AS    ${error}
        Log    ${error}
    END
Verify that users will log in to system fail 2
    TRY
        Turn off log    Input username    ${USER_NAME_RIGHT}
        Input pass    ${PASS_RIGHT}
        Click the Login button
        Display the fail title on the login page    
    EXCEPT    AS    ${error}
        Log    ${error}
    END


    
