
*** Settings ***
Library           SeleniumLibrary
Library            DateTime

*** Variables ***
${BROWSER}            Chrome
${URL}                https://bearstore-testsite.smartbear.com/register?returnUrl=%2f
${GENDER}             id:gender-female
${FIRSTNAME}          id:FirstName
${LASTNAME}           id:LastName
${DAY}                id:DateOfBirthDay
${MONTH}              id:DateOfBirthMonth
${YEAR}               id:DateOfBirthYear
${EMAIL}              id:Email
${USERNAME}           id:Username
${PASSWORD}           id:Password
${CONFIRMPASSWORD}    id:ConfirmPassword
${OPTIONS}            id:Newsletter
${REGISTERBUTTON}     id:register-button           
${STRING}    chivinh
${STRING2}     @gmail.com
*** Test Cases ***
Register Test Case
    ${TIME}     Get Current Date
    ${RESULTE}        Evaluate    '${STRING}' + '${TIME}' + '${STRING2}'
    [Documentation]    This is a simple test case example.
    Open Browser    ${URL}    ${BROWSER}
    #Maximize Browser Window
    Click Element    ${GENDER}
    Input Text    ${FIRSTNAME}    Chi
    Input Text    ${LASTNAME}    Vinh
    Select From List By Value    ${DAY}    1
    Select From List By Index    ${MONTH}    9
    Select From List By Value    ${YEAR}    2003
    Input Text    ${EMAIL}      ${RESULTE}
    Input Text    ${USERNAME}    chivinh1234 
    Input Password    ${PASSWORD}    chivinh1234@
    Input Password    ${CONFIRMPASSWORD}    chivinh1234@
    Click Element    ${OPTIONS}
    Click Button    ${REGISTERBUTTON}
    Element Should Contain    id:content     Your registration completed
    Close Browser



*** Test Cases ***
Cong chuoi
    ${chuoivuacong}    Evaluate    '${STRING}' + '${STRING2}'
    Log    ${chuoivuacong}

Example Using Plus Operator
    ${string1}    Set Variable    Hello
    ${string2}    Set Variable    World
    ${result}     Evaluate       '${string1}' + ' ' + '${string2}'
    Log           ${result}   # Kết quả: Hello World

*** Test Cases ***
Test Input Space
    Input Text    id=first\ name     Kim Ngan
    Input Text    id=last${SPACE}name    Tran Thi

*** Test Cases ***
*** Comments ***
[Documentation]    Verify login functionality
    [Tags]    Smoke    Regression
    [Setup]    Open Browser    Chrome
    [Template]    Login With Credentials
    [Timeout]    2 minutes
    TC001_Login with valid credentials    ${valid_username}    ${valid_password}
    TC002_Login with invalid credentials    ${invalid_username}    ${invalid_password}
    [Teardown]    Close Browser

*** Keywords ***
Login With Credentials
    [Arguments]    ${username}    ${password} 
    Input Text    username_field    ${username}
    Input Text    password_field    ${password}
    Click Button    login_button
    Page Should Contain Element    welcome_message



*** Settings ***
Library    Collections

*** Test Cases ***
Example Test
    # Sử dụng từ khóa Python với **kwargs
    ${result}    Example Keyword    arg1=value1    arg2=value2    arg3=value3

    # In ra kết quả
    Log    ${result}

*** Keywords ***
Example Keyword
    [Arguments]    @{kwargs}
    # In ra tất cả các đối số được truyền vào
    Log Many    @{kwargs}
    # Trả về một từ điển với các đối số
    [Return]    ${kwargs}
