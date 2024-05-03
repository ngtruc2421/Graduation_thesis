*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL_BASE}    https://bearstore-testsite.smartbear.com/

*** Keywords ***
Open Web
    [Arguments]    ${URL}
    Open Browser    ${URL}    chrome
    Maximize Browser Window
