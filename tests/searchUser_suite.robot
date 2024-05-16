*** Settings ***
Resource          ../resources/pages/page_objects/search.pageobject.resource
Resource          ../resources/pages/login_page.resource
Test Teardown     Close Browser
*** Test Cases ***
Verify that user can search the content with lowercase characters when user is logged into the system
    [Tags]    Smoke
    Access to ${URL_LOGIN}
    Input username    ${USER_NAME_RIGHT}
    Input pass        ${PASS_RIGHT}
    Click log in button
    Search with the ball
    Verify that user search success
Verify that user can search the content with uppercase characters when user is logged into the system
    [Tags]    Smoke
    Access to ${URL_LOGIN}
    Input username    ${USER_NAME_RIGHT}
    Input pass        ${PASS_RIGHT}
    Click log in button
    Search with the BALL
    Verify that user search success
Verify that the user's search will fail with special characters when the user is logged into the system
    [Tags]    Smoke
    Access to ${URL_LOGIN}
    Input username    ${USER_NAME_RIGHT}
    Input pass        ${PASS_RIGHT}
    Click log in button
    Search with the #@!
    Verify that user search fail when it did not match any products
Verify that the user's search will fail with whitespace characters when the user is logged into the system
    Access to ${URL_LOGIN}
    Input username    ${USER_NAME_RIGHT}
    Input pass        ${PASS_RIGHT}
    Click log in button
    Search with the ${Empty}
    Verify users search fail when data is whitespace
