*** Settings ***
Library    SeleniumLibrary
Library    XML
Keyword Tags    TagKey
*** Keywords ***
Demo create Keywords
    [Documentation]    This is demo
    [Teardown]    Close Browser
    [Setup]    Open Browser    chrome
    [Arguments]    ${a}    ${b}=high
    [Tags]    normal    -TagKey
    [Timeout]    0:00:10
    [Return]    ${a}
    Clear Element    ${a}