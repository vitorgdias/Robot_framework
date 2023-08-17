*** Settings ***
Documentation    This suite tests Amazon.com.br web site
Resource         assignment_resources.robot
Test Setup       Open the browser
Test Teardown    Close the browser

*** Test Cases ***

Case Test 03 - Add a product in purchase cart 
    [Documentation]    This test verify if the product has been added to the purchase cart
    [Tags]             add purchase_cart
    Access the Amazon.com.br web page
    Type in search box "Xbox Series S"
    Click in search button
    Check if the product appear in the search results "Console Xbox Series S"
    Add the product "Console Xbox Series S" to the purchase cart
    Check if the product "Console Xbox Series S" was added to the purchase cart

Case Test 04 - Remove a product from purchase cart
    [Documentation]    This test verify if the product has been removed from the purchase cart
    [Tags]             remove purchase_cart
    Access the Amazon.com.br web page
    Type in search box "Xbox Series S"
    Click in search button
    Check if the product appear in the search results "Console Xbox Series S"
    Add the product "Console Xbox Series S" to the purchase cart
    Check if the product "Console Xbox Series S" was added to the purchase cart
    Remove the product "Console Xbox Series S" from purchase cart
    Verify if the purchase cart is empty