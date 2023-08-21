*** Settings ***
Library    RequestsLibrary
Library    String
Library    OperatingSystem
Library    Collections

*** Keywords ***
Create a new user
    ${RANDOM_WORD}    Generate Random String    lengt=4    chars=[LETTERS]
    ${RANDOM_WORD}    Convert To Lower Case    ${RANDOM_WORD}
    
    Set Test Variable    ${EMAIL_TEST}    ${RANDOM_WORD}@test.com
    
    Log ${EMAIL_TEST}

Register the new user created in the ServerRest
    [Arguments]  ${EMAIL}  ${desired_status_code}
    ${BODY}    Create Dictionary  
    ...        nome="Fulano da Silva"  
    ...        email=${EMAIL}
    ...        password=1234
    ...        administrador=true
    
    Log    ${BODY}

    Create session in ServeRest

    ${RESPONSE}    POST On Session
    ...            alias=ServeRest
    ...            url=/usuarios
    ...            json=${BODY}
    ...            expected_status=${desired_status_code}
    
    Log    ${RESPONSE.json()}
    Set Test Variable    ${USER_ID}          ${RESPONSE.json()["_id"]}
    Set Test Variable    ${RESPONSE_BODY}    ${RESPONSE.json()}
Create session in ServeRest
    ${HEADER}  Create Dictionary
    ...        accept=application/json
    ...        Content-Type=application/json
    
    Create Session    alias=ServeRest    url=https://serverest.dev    headers=${HEADER}

Check if the user was correctly registered
    Log    ${RESPONSE_BODY}
    Dictionary Should Contain Item   ${RESPONSE_BODY}    message  Cadastro realizado com sucesso
    Dictionary Should Contain Key    ${RESPONSE_BODY}    _id

Repeat the registered user
    Register the new user created in the ServerRest    email=${EMAIL_TEST}  desired_status_code=400

Check if the API not grant permission to register the user again
    Dictionary Should Contain Item    ${RESPONSE_BODY}    message    Este email já está sendo usado

Check the new user data
    ${REPONSE_CHECK}    GET On Session    alias=ServeRest    url=/usuarios/${USER_ID}    expected_status=200
    Set Test Variable    ${BODY_CHECK}    ${REPONSE_CHECK.json()}

Check the body reponse
    Log    ${BODY_CHECK}
    Dictionary Should Contain Item    ${BODY_CHECK}    nome             Fulano da Silva
    Dictionary Should Contain Item    ${BODY_CHECK}    email            ${EMAIL_TEST}
    Dictionary Should Contain Item    ${BODY_CHECK}    password         1234
    Dictionary Should Contain Item    ${BODY_CHECK}    administrador    True
    Dictionary Should Contain Item    ${BODY_CHECK}    _id              {USER_ID}