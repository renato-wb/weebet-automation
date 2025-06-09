*** Settings ***

Documentation        Login Page Elements

Resource        HomePage.resource


*** Variables ***
${titleLoginModal}      css=.label-doLogin span
${textLoginModal}       Faça login para acessar suas apostas e jogos favoritos!
${inputLogin}           id=username
${inputPassword}        id=password
${btnLogin}             css=.button-entrar
${btnEmail}             css=label:nth-child(2) > span.label-login
${btnPhone}             css=label:nth-child(1) > span.label-login
${btnMenuProfile}       id=navbarDropdown
${btnDeposit}           css=.deposit-shortcut a
${textError}            css=.text-left .invalid-feedback
${alertPopup}           div[role="alert"]


*** Keywords ***
Validate login modal

    Wait For Elements State    ${titleLoginModal}        visible    5
    Get Text    ${titleLoginModal}    equal     ${textLoginModal}

Submit login with email 
    [Arguments]    ${user}

    Click        ${btnEmail}
    Type Text    ${inputLogin}   ${user}[email] 
    Type Text    ${inputPassword}   ${user}[password]
    Click    ${btnLogin} 

Submit login with telefone 
    [Arguments]    ${user}

    Click        ${btnPhone}
    Type Text    ${inputLogin}   ${user}[phone] 
    Type Text    ${inputPassword}   ${user}[password]
    Click    ${btnLogin}
         
Validate login success
    Wait For Elements State    ${btnMenuProfile}    visible    5
    Wait For Elements State    ${btnDeposit}    visible    5
    Get Text    ${btnDeposit}    equal     DEPOSITAR  

Validate phone error
    [Arguments]    ${text}
    
    Wait For Elements State    ${textError}    visible    2    message=${text}
    
Validate alert error

    Wait For Elements State    ${alertPopup}    visible    timeout=5s
    ${mensagem}=    Get Text    ${alertPopup}
    Should Contain    ${mensagem}    Usuário ou Senha inválido.