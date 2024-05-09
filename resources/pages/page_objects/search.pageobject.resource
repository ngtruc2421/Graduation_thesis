*** Settings ***
Resource    ../../../configurations/config.resource
Resource    ../base_page.resource
*** Variables ***
${SUCCESS_TITLE_CSS}    css:.page-title
${SUCCESS_TITLE}    Search result for
${INPUT_SEARCH}    css:.instasearch-term
${SEARCH_BTN}    css:.instasearch-button
${ALERT_TITLE}    Your search did not match any products.
${ALERT_TITLE_CSS}    css:.alert-warning
${DANGER_TITLE}    The minimum length for the search term is 2 characters.
${DANGER_TITLE_CSS}    css:.alert-danger
${Empty}    \\             
*** Keywords ***
Search with the ${CONTENT}
    Input ${CONTENT} For ${INPUT_SEARCH}
    Click on ${SEARCH_BTN} button
Verify users search fail when data is whitespace
    Verify a case    ${DANGER_TITLE}    ${DANGER_TITLE_CSS}
Verify that user search fail when it did not match any products
    Verify a case     ${ALERT_TITLE}    ${ALERT_TITLE_CSS}
Verify that user search success
    Verify a case     ${SUCCESS_TITLE}    ${SUCCESS_TITLE_CSS}

