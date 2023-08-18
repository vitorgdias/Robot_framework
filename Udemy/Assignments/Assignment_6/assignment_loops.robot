*** Settings ***
Library    BuiltIn

*** Variables ***
@{LIST}    65  32  11  4  5  76  7  8  10  101  15  82

*** Test Cases ***
Log of numbers in the list
    Log To Console    ${\n}
    FOR  ${NUMBERS}  IN  @{LIST}
        IF  '${NUMBERS}' == '5'
            check for number 5
        ELSE IF  '${NUMBERS}' == '10'
            check for number 10
        ELSE
            other numbers
        END    
    END
*** Keywords ***
check for number 5
    Log    I'm the number 5!
    Log To Console    I'm the number 5!

check for number 10
    Log    I'm the number 10!
    Log To Console    I'm the number 10!

other numbers
    Log    I'm not number 5 or number 10!
    Log To Console    I'm not number 5 or number 10!
    