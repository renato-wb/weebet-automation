*** Settings ***

Documentation        Home Page Elements

Resource        ../base.resource

*** Variables ***

${btnRegister}    css=.menu-conta .btn-custom
${btnLoginHome}       css=.menu-conta .botao-entrar


*** Keywords ***
Click register button
    Click    ${btnRegister}

Click login button
    Click    ${btnLoginHome}
    