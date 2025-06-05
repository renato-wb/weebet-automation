*** Settings ***

Documentation        Ações e elementos da página home

Resource        ../base.resource

*** Variables ***

${btnRegister}    .menu-conta .btn-custom
${btnLogin}       .menu-conta .botao-entrar


*** Keywords ***

Click register button
    Click    ${btnRegister}

Click login button
    Click    ${btnLogin}
    