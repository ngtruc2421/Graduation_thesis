*** Settings ***
Library    SeleniumLibrary
*** Variables ***
@{List}    a    b    c    d    e
@{NumbersList}    ${1}    ${2}    ${3}    ${4}    ${5}    
${location}    css:div

*** Test Cases ***
# For loop example
    # FOR    ${element}    IN    dog    cat    fish    mouse    elephant
    #     Log    ${element}[1]        
    # END

    #FOR    ${element}    IN    dog    cat    fish    mouse    elephant
    # FOR    ${element}    IN    @{List}
    #     Log    ${element}
    #     FOR    ${counter}    IN RANGE    5    10    20
    #         Log    ${counter}     
    #     END                     
    # END
# Manage index manually
#     ${index} =    Set Variable    -1
#     FOR    ${item}    IN    @{List}
#         ${index} =    Evaluate    ${index} + 1
#         Log    ${index},${item}
#     END

# FOR-IN-ENUMERATE
#     FOR    ${index}    ${item}    IN ENUMERATE    @{List}
#         Log    ${index},${item}
#     END
# FOR-IN-ENUMERATE with start
#     FOR    ${index}    ${item}    IN ENUMERATE    @{List}    start=2
#         Log    ${index},${item}
#     END
# FOR in zipp
#     FOR    ${a}    ${b}    IN ZIP    ${NumbersList}    ${List}
#         Log    ${a},${b}
#     END
#     # chỉ định lặp lại hành động nào đó mà không cần dùng vòng lặp, số lần lặp, từ khóa, tham số
#     Repeat Keyword    2    Click Element    ${location}

While loop example
    ${c}=    Set Variable    ${1}
    WHILE    ${c} < 3    
        Log    Day là vong lap white
        ${c}=    Evaluate     ${c} + 1
        Sleep    0.5
    END
    Log    ${c}

example
    ${c}=    Set Variable    ${1}
    WHILE    ${c} < 10
        IF    ${c} < 3    
        ${c}=    Evaluate     ${c} + 1
        ELSE IF    ${c} < 5
        ${c}=    Evaluate     ${c} + 2
        ELSE
        ${c}=    Evaluate     ${c} + 3
        END
    END
    IF    ${c} < 12    
    ${c}=    Evaluate    ${c}+5
    END
    Log    ${c}