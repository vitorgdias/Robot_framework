*** Variable ***
@{MONTHS}        January  February  March  April  May  June  July  August  September  October  November  December

*** Keywords ***
Months log
    Log To Console    This month is: ${MONTHS[0]}
    Log To Console    This month is: ${MONTHS[1]}
    Log To Console    This month is: ${MONTHS[2]}
    Log To Console    This month is: ${MONTHS[3]}
    Log To Console    This month is: ${MONTHS[4]}
    Log To Console    This month is: ${MONTHS[5]}
    Log To Console    This month is: ${MONTHS[6]}
    Log To Console    This month is: ${MONTHS[7]}
    Log To Console    This month is: ${MONTHS[8]}
    Log To Console    This month is: ${MONTHS[9]}
    Log To Console    This month is: ${MONTHS[10]}
    Log To Console    This month is: ${MONTHS[11]}

*** Test Cases ***
Show Months
    Months log