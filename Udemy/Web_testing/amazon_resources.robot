*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${URL}                     https://www.amazon.com.br
${MENU_ELETRONICOS}        /html/body/div[1]/header/div/div[1]/div[1]/div[1]/a                

*** Keywords ***
Open the browser
    Open Browser    browser=chrome
    Maximize Browser Window

Close the browser
    Close Browser

Access the Amazon.com.br web page
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}
    

