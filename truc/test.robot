*** Settings ***
Library    SeleniumLibrary
Variables    variable.py
Test Setup    Setup Keywords  
Test Teardown    Close Browser

*** Test Cases ***
Log in not success
    [Tags]    Low
    Maximize Browser Window
    Click Element    css:.fa-user-circle
    Input Text    css:#UsernameOrEmail    ${USER_NAME}
    Input Password    css:#Password    ${PASS_WRONG}
    Click Element    css:.btn-login
    Page Should Contain    Login was unsuccessful. Please correct the errors and try again.
Log in success
    [Tags]    High
    Maximize Browser Window
    Click Element    css:.fa-user-circle
    Input Text    css:#UsernameOrEmail    ${USER_NAME}
    Input Password    css:#Password    ${PASS_RIGHT}
    Click Element    css:.btn-login
    # Input Text    locator    $[LIST__ANIMAl]
    Page Should Contain    Welcome to our store.
# Filter the products follow prices
#     [Tags]    medium
#     Click Element    ${ITEM_PRO}
#     Click Element    ${RADIO_PRICE}
#     Click Element    ${RADIO_PRICE_ITEM}
#     Page Should Contain    Your filter did not match any products.

*** Keywords ***
Setup Keywords
    Open Browser    ${URL}    chrome
    Maximize Browser Window


