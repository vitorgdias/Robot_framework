*** Settings ***
Resource    ../resource/api_testing_users.resource

*** Variables ***


*** Test Cases ***
Scenario 01 - Register a new user on ServerRest successfully
    Create a new user
    Register the new user created in the ServerRest
    # Check if the user was correctly registered