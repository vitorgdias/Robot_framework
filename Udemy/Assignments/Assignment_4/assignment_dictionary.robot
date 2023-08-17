*** Variable ***
@{MONTHS}        January  February  March  April  May  June  July  August  September  October  November  December
&{DAYS_IN_MONTH}    January=31  February=28  March=31  April=30  May=31  June=30  July=31  August=31  September=30  October=31  November=30  December=31

*** Keywords ***
Days in months
    Log to Console  This month: ${MONTHS[0]} has ${DAYS_IN_MONTH.${MONTHS[0]}} days
    Log to Console  This month: ${MONTHS[1]} has ${DAYS_IN_MONTH.${MONTHS[1]}} days
    Log to Console  This month: ${MONTHS[2]} has ${DAYS_IN_MONTH.${MONTHS[2]}} days
    Log to Console  This month: ${MONTHS[3]} has ${DAYS_IN_MONTH.${MONTHS[3]}} days
    Log to Console  This month: ${MONTHS[4]} has ${DAYS_IN_MONTH.${MONTHS[4]}} days
    Log to Console  This month: ${MONTHS[5]} has ${DAYS_IN_MONTH.${MONTHS[5]}} days
    Log to Console  This month: ${MONTHS[6]} has ${DAYS_IN_MONTH.${MONTHS[6]}} days
    Log to Console  This month: ${MONTHS[7]} has ${DAYS_IN_MONTH.${MONTHS[7]}} days
    Log to Console  This month: ${MONTHS[8]} has ${DAYS_IN_MONTH.${MONTHS[8]}} days
    Log to Console  This month: ${MONTHS[9]} has ${DAYS_IN_MONTH.${MONTHS[9]}} days
    Log to Console  This month: ${MONTHS[10]} has ${DAYS_IN_MONTH.${MONTHS[10]}} days
    Log to Console  This month: ${MONTHS[11]} has ${DAYS_IN_MONTH.${MONTHS[11]}} days

*** Test Cases ***
Show months and days 
    Days in months