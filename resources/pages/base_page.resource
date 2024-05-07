*** Settings ***
Resource    ../../configurations/config.resource

*** Variables ***
${URL_BASE}    https://bearstore-testsite.smartbear.com/
${BROWSER}    chrome

*** Keywords ***
Access to ${URL}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
