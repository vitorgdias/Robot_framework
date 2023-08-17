*** Settings ***
Library        String

*** Variables ***
&{INFORMATION}    name=Example    surname=LastName

*** Test Cases ***
Printing the Custom Email
    ${CUSTOM_EMAIL}    Generate Custom Email    ${INFORMATION.name}    ${INFORMATION.surname}
    Log To Console   Custom Email: ${CUSTOM_EMAIL}

*** Keywords ***
Generate Custom Email
    [Arguments]    ${name}    ${surname}
    ${RANDOM_WORD}    Generate Random String
    ${CUSTOM_EMAIL}    Set Variable    ${name}${surname}${RANDOM_WORD}@testerobot.com
    [Return]    ${CUSTOM_EMAIL}
