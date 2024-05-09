*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections
Library    String
Library    RequestsLibrary
*** Variables ***
${URL_BASE}    https://bearstore-testsite.smartbear.com
${URL_LOGIN}    ${URL_BASE}/login  
${BROWSER}    chrome
