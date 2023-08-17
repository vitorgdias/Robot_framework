*** Settings ***
Documentation    This suite tests Amazon.com.br web site
Resource         ../Assignment_1/assignment_resources.robot
Test Setup       Open the browser
Test Teardown    Close the browser

*** Test Cases ***

Case Test 03 - Add a product in purchase cart 
    [Documentation]    This test verify if the product has been added to the purchase cart
    [Tags]             add purchase_cart
    Given Access the Amazon.com.br web page
    When Type in search box "Xbox Series S"
    And Click in search button
    And Check if the product appear in the search results "Console Xbox Series S"
    Then Add the product "Console Xbox Series S" to the purchase cart
    And Check if the product "Console Xbox Series S" was added to the purchase cart

Case Test 04 - Remove a product from purchase cart
    [Documentation]    This test verify if the product has been removed from the purchase cart
    [Tags]             remove purchase_cart
    Given Access the Amazon.com.br web page
    When Type in search box "Xbox Series S"
    And Click in search button
    And Check if the product appear in the search results "Console Xbox Series S"
    Then Add the product "Console Xbox Series S" to the purchase cart
    And Check if the product "Console Xbox Series S" was added to the purchase cart
    Then Remove the product "Console Xbox Series S" from purchase cart
    And Verify if the purchase cart is empty