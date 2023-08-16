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
    Given Access the Amazon.com.br web page
    When Enter in "Eletrônicos" menu
    And Check if the page have the phrase "Eletrônicos e Tecnologia"
    Then Check if the page header is "Eletrônicos e Tecnologia | Amazon.com.br"
    

Test Case 02 - Product search
    [Documentation]  This test check the product search
    [Tags]           product_search  search_list
    Given Access the Amazon.com.br web page
    When Type in search box "Xbox Series S"
    And Click in search button
    Then Check if the product appear in the search results "Console Xbox Series S"