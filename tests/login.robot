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

TC-Login-02
    [Documentation]    Login with unregistered email
    ${user}    Create Dictionary    
    ...    email=tc_login_02@wee.bet
    ...    password=Admin@123
      
    Click login button
    Validate login modal
    Submit login with email      ${user}
    
    Validate alert error

TC-Login-03
    [Documentation]    Login with invalid email and correct password
    ${user}    Create Dictionary    
    ...    email=tc_login_03.com
    ...    password=Admin@123
      
    Click login button 
    Validate login modal
    Submit login with email      ${user}
    
    Validate alert error

TC-Login-04
    [Documentation]    Login with empty email and correct password
    ${user}    Create Dictionary    
    ...    email=${EMPTY}
    ...    password=Admin@123
      
    Click login button 
    Validate login modal
    Submit login with email      ${user}

    Validate message error    Campo obrigatório.

TC-Login-05
    [Documentation]    Login with correct email and invalid password
    ${user}    Create Dictionary    
    ...    email=qa@wee.bet
    ...    password=12345
      
    Click login button 
    Validate login modal
    Submit login with email      ${user}
    
    Validate alert error

TC-Login-06
    [Documentation]    Login with correct email and empty password
    ${user}    Create Dictionary    
    ...    email=qa@wee.bet
    ...    password=${EMPTY}
      
    Click login button 
    Validate login modal
    Submit login with email      ${user}
    
    Validate message error    Campo obrigatório.

    
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
    Validate message error    Campo obrigatório.

TC-Login-11
    [Documentation]    Login with correct phone number and empty password
    ${user}    Create Dictionary    
    ...    phone=87932912890
    ...    password=${EMPTY}
      
    Click login button 
    Validate login modal
    Submit login with telefone     ${user} 
    Validate message error    Senha obrigatório.