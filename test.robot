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
