*** Settings ***
Library    SeleniumLibrary
*** Variables ***
@{List}    a    b    c    d    e
*** Test Cases ***
For loop example
    # FOR    ${element}    IN    dog    cat    fish    mouse    elephant
    #     Log    ${element}[1]        
    # END

    #FOR    ${element}    IN    dog    cat    fish    mouse    elephant
    FOR    ${element}    IN    @{List}
        Log    ${element}
        FOR    ${counter}    IN RANGE    5    10    20
            Log    ${counter}     
        END                     
    END
Manage index manually
    ${index} =    Set Variable    -1
    FOR    ${item}    IN    @{List}
        ${index} =    Evaluate    ${index} + 1
        Log    ${index},${item}
    END

FOR-IN-ENUMERATE
    FOR    ${index}    ${item}    IN ENUMERATE    @{List}
        Log    ${index},${item}
    END