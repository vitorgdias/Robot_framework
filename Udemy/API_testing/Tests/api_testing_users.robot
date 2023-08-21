*** Settings ***
Resource    ../resource/api_testing_users.resource

*** Variables ***


*** Test Cases ***
Scenario 01 - Register a new user on ServerRest successfully
    Create a new user
    Register the new user created in the ServerRest    email=${EMAIL_TEST}  desired_status_code=201
    Check if the user was correctly registered

Scenario 02 - Register a user that already exists
    Create a new user
    Register the new user created in the ServerRest    email=${EMAIL_TEST}  desired_status_code=201
    Repeat the registered user
    Check if the API not grant permission to register the user again