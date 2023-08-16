*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${URL}                      https://www.amazon.com.br
${MENU_ELETRONICOS}         //a[contains(text(),'Eletrônicos')]
${WAIT_TIMEOUT}             10s                
${HEADER_ELETRONICOS}       //h1[contains(.,'Eletrônicos e Tecnologia')]
${HEADER_TEXT_ELETRONICOS}  Eletrônicos e Tecnologia
${SEARCH_BAR}               twotabsearchtextbox
${SEARCH_BUTTON}            nav-search-submit-button

*** Keywords ***
Open the browser
    Open Browser    browser=chrome
    Maximize Browser Window

Close the browser
    Capture Page Screenshot
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

Type in search box "${TEXT}"
    Input Text    locator=${SEARCH_BAR}    text=${TEXT}

Click in search button
    Click Element    locator=${SEARCH_BUTTON}

Check if the product appear in the search results "${PRODUCT}"
    Wait Until Element Is Visible    locator=(//span[contains(text(),'${PRODUCT}')])[3]    timeout=${WAIT_TIMEOUT}
    
