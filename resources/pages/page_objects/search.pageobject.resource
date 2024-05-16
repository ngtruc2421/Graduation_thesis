*** Settings ***
Resource    ../../../configurations/config.resource
Resource    ../base_page.resource
*** Variables ***
${SUCCESS_TITLE_ELE}    css:.page-title
${SUCCESS_TITLE}    Search result for
${INPUT_SEARCH}    css:.instasearch-term
${SEARCH_BTN}    css:.instasearch-button
${ALERT_TITLE}    Your search did not match any products.
${ALERT_TITLE_ELE}    css:.alert-warning
${DANGER_TITLE}    The minimum length for the search term is 2 characters.
${DANGER_TITLE_ELE}    css:.alert-danger
${Empty}    \\             
*** Keywords ***
Search with the content
    [Arguments]    ${CONTENT}
    Input content    ${CONTENT}    ${INPUT_SEARCH}
    Click on ${SEARCH_BTN} button
Display the warning message
    [Arguments]    ${TEXT}    ${LOCATOR}
    Display the message    ${TEXT}    ${LOCATOR}
Display the success message
    [Arguments]    ${TEXT}    ${LOCATOR}
    Display the message    ${TEXT}    ${LOCATOR}

