*** Settings ***
Resource    ../resources/pages/page_objects/search.pageobject.resource
Test Teardown     Close Browser
*** Test Cases ***
Verify that user can search with lowercase
    Search with the ball
    Verify users search ${SUCCESS_TITLE} at ${SUCCESS_TITLE_CSS}
Verify that user can search with uppercase
    Search with the BALL
    Verify users search ${SUCCESS_TITLE} at ${SUCCESS_TITLE_CSS}
Verify that user search fail with the letter special
    Search with the #@!
    Verify users search ${ALERT_TITLE} at ${ALERT_TITLE_CSS}
Verify that user search fail with the white spaces
    Search with the ${EMPTY}
    Verify users search ${DANGER_TITLE} at ${DANGER_TITLE_CSS}
