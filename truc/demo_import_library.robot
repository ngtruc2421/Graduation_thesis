*** Settings ***
Library    test.robot
# change name of a library
Library    Demo.robot    AS    demo
# import library with agrument
Library    SeleniumLibrary    page_load_timeout=0:00:10  
*** Test Cases ***
Demo import Library
    # import library in testcase setion
    Import Library    SeleniumLibrary    page_load_timeout=0:00:20
    Click Element    locator
*** Comments ***
Some standard library BuiltIn
    Collections
    DateTime
    Dialogs
    OperatingSystem
    Process
    Screenshot
    String
    Telnet
    XML