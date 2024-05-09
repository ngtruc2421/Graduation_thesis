*** Settings ***
Resource          ../resources/pages/page_objects/search.pageobject.resource
Resource          ../resources/pages/login_page.resource
Test Teardown     Close Browser
Test Tags    High    Search
*** Test Cases ***
#### HASN'T LOGGED IN ####
Verify that user can search the content with lowercase characters when user is not logged into the system
    Access to ${URL_BASE}
    Search with the ball
    Verify users search ${SUCCESS_TITLE} at ${SUCCESS_TITLE_CSS}
Verify that user can search the content with uppercase characters when user is not logged into the system
    Access to ${URL_BASE}
    Search with the BALL
    Verify users search ${SUCCESS_TITLE} at ${SUCCESS_TITLE_CSS}
Verify that the user's search will fail with special characters when the user is not logged into the system
    Access to ${URL_BASE}
    Search with the #@!
    Verify users search ${ALERT_TITLE} at ${ALERT_TITLE_CSS}
Verify that the user's search will fail with whitespace characters when the user is not logged into the system
    Access to ${URL_BASE}
    Search with the ${Empty}
    Verify users search ${DANGER_TITLE} at ${DANGER_TITLE_CSS}

#### LOGGED IN ####
Verify that user can search the content with lowercase characters when user is logged into the system
    Access to ${URL_LOGIN}
    Input username    ${USER_NAME_RIGHT}
    Input pass        ${PASS_RIGHT}
    Click log in button
    Search with the ball
    Verify users search ${SUCCESS_TITLE} at ${SUCCESS_TITLE_CSS}
Verify that user can search the content with uppercase characters when user is logged into the system
    Access to ${URL_LOGIN}
    Input username    ${USER_NAME_RIGHT}
    Input pass        ${PASS_RIGHT}
    Click log in button
    Search with the BALL
    Verify users search ${SUCCESS_TITLE} at ${SUCCESS_TITLE_CSS}
Verify that the user's search will fail with special characters when the user is logged into the system
    Access to ${URL_LOGIN}
    Input username    ${USER_NAME_RIGHT}
    Input pass        ${PASS_RIGHT}
    Click log in button
    Search with the #@!
    Verify users search ${ALERT_TITLE} at ${ALERT_TITLE_CSS}
Verify that the user's search will fail with whitespace characters when the user is logged into the system
    Access to ${URL_LOGIN}
    Input username    ${USER_NAME_RIGHT}
    Input pass        ${PASS_RIGHT}
    Click log in button
    Search with the ${Empty}
    Verify users search ${DANGER_TITLE} at ${DANGER_TITLE_CSS}
