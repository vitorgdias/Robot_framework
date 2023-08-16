*** Settings ***
Documentation    This suite tests Amazon.com.br web site
Resource         amazon_resources.robot
Test Setup       Open the browser
Test Teardown    Close the browser

*** Test Cases ***

Test Case 01 - Access "Eletrônicos" menu
    [Documentation]  This test verify the menu "Eletrônicos" from Amazon.com.br web
    ...              and vefiry if have a "Computadores e Informática" category name
    [Tags]           menus  categories
    Access the Amazon.com.br web page
    Enter in "Eletrônicos" menu
    Check if the page have the phrase "Eletrônicos e Tecnologia"
    Check if the page header is "Eletrônicos e Tecnologia | Amazon.com.br"
    

Test Case 02 - Product search
    [Documentation]  This test check the product search
    [Tags]           product_search  search_list
    Access the Amazon.com.br web page
    Type in search box "Xbox Series S"
    Click in search button
    Check if the product appear in the search results "Console Xbox Series S"
