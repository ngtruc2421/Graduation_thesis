*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections
*** Variables ***
${GLOBAL}    global
${local}    locall
${${local}}    sameName
&{dictionary}    name=john    age=23    supervisor=alex
${boolean}    true

*** Comments ***
"@" access the list
"&" accees the dictionary
*** Test Cases ***
Test variables list
    ${list} =    Evaluate    ['a','b','c','d', 1]
    Log    ${dictionary}[name]
    Log    ${dictionary.age}
    Log    ${locall}    
    Set Environment Variable    URLLogin    https:/google.com
#    ${assign}    Get All Links
#    Log    ${assign}
    ${lst}    Create List    first    second    third    fourth
    ${dic}    Create Dictionary    name=joo    class=12
    ${dic.name}    Set Variable    junghoon
    Log    ${lst}
    Log    ${dic}
    Length Should Be    ${dic}    2
    Log    ${boolean}
    Should Be Equal    ${local}    ${SPACE*3}