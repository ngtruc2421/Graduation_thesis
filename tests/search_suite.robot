*** Settings ***
Resource          ../resources/pages/page_objects/search.pageobject.resource
Resource          ../resources/pages/login_page.resource
Test Teardown     Close Browser
*** Test Cases ***
#### HASN'T LOGGED IN ####
Verify that user can search the content with lowercase characters when user is not logged into the system
    [Tags]    Smoke
    Access to ${URL_BASE}
    Search with the content     ball
    Display the success message    ${SUCCESS_TITLE}    ${SUCCESS_TITLE_ELE}

Verify that user can search the content with uppercase characters when user is not logged into the system
    [Tags]    Smoke
    Access to ${URL_BASE}
    Search with the content     BALL
    Display the success message    ${SUCCESS_TITLE}    ${SUCCESS_TITLE_ELE}

Verify that the user's search will fail with special characters when the user is not logged into the system
    [Tags]    Smoke
    Access to ${URL_BASE}
    Search with the content    "#@!"
    Display the warning message    ${ALERT_TITLE}    ${ALERT_TITLE_ELE}
Verify that the user's search will fail with whitespace characters when the user is not logged into the system
    Access to ${URL_BASE}
    Search with the ${Empty}
    Display the warning message    ${DANGER_TITLE}    ${DANGER_TITLE_ELE}

#### LOGGED IN ####
Verify that user can search the content with lowercase characters when user is logged into the system
    [Tags]    Smoke
    Access to ${URL_LOGIN}
    Input username    ${USER_NAME_RIGHT}
    Input pass        ${PASS_RIGHT}
    Click The Login button
    Search with the content     ball
    Display the success message    ${SUCCESS_TITLE}    ${SUCCESS_TITLE_ELE}

Verify that user can search the content with uppercase characters when user is logged into the system
    [Tags]    Smoke
    Access to ${URL_LOGIN}
    Input username    ${USER_NAME_RIGHT}
    Input pass        ${PASS_RIGHT}
    Click The Login button
    Search with the content     BALL
    Display the success message    ${SUCCESS_TITLE}    ${SUCCESS_TITLE_ELE}

Verify that the user's search will fail with special characters when the user is logged into the system
    [Tags]    Smoke
    Access to ${URL_LOGIN}
    Input username    ${USER_NAME_RIGHT}
    Input pass        ${PASS_RIGHT}
    Click The Login button
    Search with the content     "#@!"
    Display the warning message    ${ALERT_TITLE}    ${ALERT_TITLE_ELE}
Verify that the user's search will fail with whitespace characters when the user is logged into the system
    Access to ${URL_LOGIN}
    Input username    ${USER_NAME_RIGHT}
    Input pass        ${PASS_RIGHT}
    Click The Login button
    Search with the ${Empty}
    Display the warning message    ${DANGER_TITLE}    ${DANGER_TITLE_ELE}
