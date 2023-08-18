*** Settings ***
Library    RequestsLibrary
Library    String
Library    OperatingSystem

*** Keywords ***
Create a new user
    ${RANDOM_WORD}    Generate Random String    lengt=4    chars=[LETTERS]
    ${RANDOM_WORD}    Convert To Lower Case    ${RANDOM_WORD}
    
    Set Test Variable    ${EMAIL_TEST}    ${RANDOM_WORD}@test.com
    
    Log ${EMAIL_TEST}

Register the new user created in the ServerRest
    ${BODY}    Create Dictionary  
    ...        nome="Fulano da Silva"  
    ...        email=${EMAIL_TEST}
    ...        password=1234
    ...        administrador=true
    
    Log    ${BODY}
    
    Create session in ServeRest

    ${RESPONSE}    POST On Session
    ...            alias=ServeRest
    ...            url=/usuarios
    ...            json=${BODY}
    
    Log    ${RESPONSE.json()}

Create session in ServeRest
    ${HEADER}  Create Dictionary
    ...        accept=application/json
    ...        Content-Type=application/json
    
    Create Session    alias=ServeRest    url=https://serverest.dev    headers=${HEADER}
