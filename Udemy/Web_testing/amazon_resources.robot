*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${URL}                      https://www.amazon.com.br
${MENU_ELETRONICOS}         //a[contains(text(),'Eletrônicos')]
${WAIT_TIMEOUT}             10s                
${HEADER_ELETRONICOS}       //h1[contains(.,'Eletrônicos e Tecnologia')]
${HEADER_TEXT_ELETRONICOS}  Eletrônicos e Tecnologia

*** Keywords ***
Open the browser
    Open Browser    browser=chrome
    Maximize Browser Window

Close the browser
    Close Browser

Access the Amazon.com.br web page
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}    timeout=${WAIT_TIMEOUT}

Enter in "Eletrônicos" menu
    Click Element        locator=${MENU_ELETRONICOS}

Check if the page have the phrase "${PHRASE}"
    Wait Until Page Contains    text=${PHRASE}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Check if the page header is "${TITLE}"
    Title Should Be    title=${TITLE}
