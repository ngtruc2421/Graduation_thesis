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
*** Keywords ***
Search with the ${CONTENT}
    Access to ${URL_BASE}
    Input ${CONTENT} For ${INPUT_SEARCH}
    Click on ${SEARCH_BTN} button
Verify users search ${TEXT} at ${LOCATOR} 
    Verify a case    ${TEXT}    ${LOCATOR}
