*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${URL}                      https://www.amazon.com.br
${WAIT_TIMEOUT}             10s 
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
    Wait Until Element Is Visible    locator=${SEARCH_BAR}    timeout=${WAIT_TIMEOUT}

Type in search box "${TEXT}"
    Input Text    locator=${SEARCH_BAR}    text=${TEXT}

Click in search button
    Click Element    locator=${SEARCH_BUTTON}

Check if the product appear in the search results "${PRODUCT}"
    Wait Until Element Is Visible    locator=//body/div[@id='a-page']/div[@id='search']/span[2]/div[1]/h1[1]/div[1]/div[1]/div[1]/div[1]/span[3]

Add the product "${PRODUCT}" to the purchase cart
    Wait Until Element Is Visible    locator=//body/div[@id='a-page']/div[@id='search']/div[1]/div[1]/div[1]/span[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/h2[1]/a[1]
    Click Element        locator=//body/div[@id='a-page']/div[@id='search']/div[1]/div[1]/div[1]/span[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/h2[1]/a[1]   
    Wait Until Element Is Visible    locator=add-to-cart-button                                                                         timeout=${WAIT_TIMEOUT}
    Click Element        locator=add-to-cart-button

Check if the product "${PRODUCT}" was added to the purchase cart
    Click Element                    locator=nav-cart-count
    Wait Until Element Is Visible    locator=//body/div[@id='a-page']/div[2]/div[3]/div[5]/div[1]/div[2]/div[1]/div[1]/form[1]/div[2]/div[3]/div[4]/div[1]/div[2]/ul[1]/li[1]/span[1]/a[1]/span[1]/span[1]

Remove the product "Console Xbox Series S" from purchase cart
    Click Element    locator=//body/div[@id='a-page']/div[2]/div[3]/div[5]/div[1]/div[2]/div[1]/div[1]/form[1]/div[2]/div[3]/div[4]/div[1]/div[2]/div[1]/span[2]/span[1]/input[1]

Verify if the purchase cart is empty
    Wait Until Element Is Visible    locator=//h1[contains(text(),'Seu carrinho de compras da Amazon está vazio.')]