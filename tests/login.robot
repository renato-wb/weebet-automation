*** Settings ***

Documentation        Login Test Cases

Resource    ../resources/pages/HomePage.resource
Resource    ../resources/pages/LoginPage.resource


Test Setup           Start session
#Test Teardown        Take Screenshot

*** Test Cases ***
TC-Login-01
    [Documentation]    Login success with email
    ${user}    Create Dictionary    
    ...    email=qa@wee.bet
    ...    password=Admin@123
      
    Click login button
    Validate login modal
    Submit login with email      ${user}
    Validate login success

TC-Login-07
    [Documentation]    Login success with phone number
    ${user}    Create Dictionary    
    ...    phone=87932912890
    ...    password=Admin@123
      
    Click login button 
    Validate login modal
    Submit login with telefone     ${user} 
    Validate login success   

TC-Login-08
    [Documentation]    Login with invalid phone number and correct password
    ${user}    Create Dictionary    
    ...    phone=87932912899
    ...    password=Admin@123
      
    Click login button 
    Validate login modal
    Submit login with telefone     ${user} 
    Validate alert error

TC-Login-09
    [Documentation]    Login with correct phone number and invalid password
    ${user}    Create Dictionary    
    ...    phone=87932912890
    ...    password=Admin@12
      
    Click login button 
    Validate login modal
    Submit login with telefone     ${user} 
    Validate alert error

TC-Login-10
    [Documentation]    Login with empty phone number and correct password
    ${user}    Create Dictionary    
    ...    phone=${EMPTY}
    ...    password=Admin@123
      
    Click login button 
    Validate login modal
    Submit login with telefone     ${user} 
    Validate phone error    Campo obrigatório.

TC-Login-11
    [Documentation]    Login with correct phone number and empty password
    ${user}    Create Dictionary    
    ...    phone=87932912890
    ...    password=${EMPTY}
      
    Click login button 
    Validate login modal
    Submit login with telefone     ${user} 
    Validate phone error    Senha obrigatório.