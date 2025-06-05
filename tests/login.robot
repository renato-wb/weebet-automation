*** Settings ***

Documentation        Cenários de login de usuário

Resource        ../resources/pages/HomePage.resource
Resource    ../resources/pages/LoginPage.resource


Test Setup           Start session
Test Teardown        Take Screenshot

*** Test Cases ***
Deve realizar login com sucesso utilizando email
    ${user}    Create Dictionary    
    ...    email=qa@wee.bet
    ...    senha=Admin@123
      
    Click login button
    
    Validate login modal    Faça login para acessar suas apostas e jogos favoritos!

    Submit login with email      ${user}

Deve realizar login com sucesso utilizando telefone
    ${user}    Create Dictionary    
    ...    telefone=87932912890
    ...    senha=Admin@123
      
    Click login button
    
    Validate login modal    Faça login para acessar suas apostas e jogos favoritos!

    Submit login with telefone     ${user}    

