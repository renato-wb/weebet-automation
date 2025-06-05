*** Settings ***

Documentation        Elementos e ações da página de login

Resource        HomePage.resource


*** Variables ***
${title_login_modal}    css=.label-doLogin span
${inputLogin}           id=username
${inputSenha}           id=password
${btnEntrar}            css=.button-entrar
${btnEmail}             css=label:nth-child(2) > span.label-login
${btnTelefone}          css=label:nth-child(1) > span.label-login
${btnMenuPerfil}        id=navbarDropdown
${btnDepositar}         css=.deposit-shortcut a
  


*** Keywords ***
Validate login modal
    [Arguments]    ${text}
      
    Wait For Elements State    ${title_login_modal}        visible    5

    Get Text    ${title_login_modal}    equal     ${text}

Submit login with email 
    [Arguments]    ${user}

    Click        ${btnEmail}
    Type Text    ${inputLogin}   ${user}[email] 
    Type Text    ${inputSenha}   ${user}[senha]

    Click    ${btnEntrar} 

Submit login with telefone 
    [Arguments]    ${user}

    Click        ${btnTelefone}
    Type Text    ${inputLogin}   ${user}[telefone] 
    Type Text    ${inputSenha}   ${user}[senha]

    Click    ${btnEntrar}

    Wait For Elements State    ${btnMenuPerfil}    visible    5
    Wait For Elements State    ${btnDepositar}    visible    5
    Get Text    ${btnDepositar}    equal     DEPOSITAR       
    