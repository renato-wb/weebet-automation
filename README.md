# Plano de Teste

## 1. Informações Gerais

Nome do Projeto: Weebet

Responsável pelo Teste: @André Santiago  @Renato Corrêa 

Data de Início: 16/05/25

Data de Término Prevista: 

## 2. Objetivos do Teste

- Verificar a funcionalidade do sistema
- Identificar possíveis falhas
- Garantir a qualidade do produto

## 3. Escopo

### 3.1 O que será testado

- Funcionalidades definidas como críticas: Login, Cadastro, Apostas, Depósito;
- Interface do usuário;

### 3.2 O que não será testado

- Problemas definidos como críticos Instabilidade e Fraude;

## 4. Estratégia de Teste

### 4.1 Tipos de Teste

- Testes sistema

## 5. Cronograma

| Atividade | Data Início | Data Fim | Responsável |
| --- | --- | --- | --- |
| Planejamento | 19/05/25 | 30/05/25 | @André Santiago @Renato Corrêa  |
| Execução | 02/06/25 |  |  |
| Análise |  |  |  |
| Relatório |  |  |  |

## 6. Recursos Necessários

- Equipe de teste
    - André Santiago(@André Santiago)
    - Renato Corrêa(@Renato Corrêa)
- Ambiente de teste
    - **EM DEFINIÇÃO (sem reCaptch)**
- Ferramentas de teste
    - VS Code
    - [Robot Framework](https://robotframework.org/)
- Documentação

## 7. Casos de Teste

- Login
    - TC-Login-01
        
        
        | ID | TC-Login-01 |
        | --- | --- |
        | **Título** | Login com sucesso utilizando e-mail |
        | **Descrição** | Apostador que já possui cadastro, realiza login com sucesso |
        | **Pré-condições** | Apostador com conta cadastrada |
        | **Passos** | • Dado que o usuário acesse o modal de login;
        • Quando ele preenche os campos com dados validos;
        • E clica em Entrar;
        • Então o usuário deve ser direcionado para home page com o menu perfil liberado. |
        | **Resultado Esperado** | O apostador consegue logar no sistema. |
        | **Status** | Desenvolvido |
    - TC-Login-02
        
        
        | ID | TC-Login-02 |
        | --- | --- |
        | **Título** | Login com e-mail não cadastrado |
        | **Descrição** | Apostador que não possui e-mail, tenta fazer login |
        | **Pré-condições** | Apostador sem conta cadastrada |
        | **Passos** | • Dado que o usuário acesse o modal de login;
        • Quando ele preenche o campo e-mail com dado inválido
        • E senha com dados validos;
        • E clica em Entrar;
        • Então o sistema mostra mensagem de erro |
        | **Resultado Esperado** | O apostador não consegue logar no sistema |
        | **Status** | Para desenvolver |
    - TC-Login-03
        
        
        | ID | TC-Login-03 |
        | --- | --- |
        | **Título** | Login com e-mail inválido e senha válida |
        | **Descrição** | Apostador tenta realizar login com dados inválidos |
        | **Pré-condições** | Esta no modal de login |
        | **Passos** | • Dado que o usuário acesse o modal de login;
        • Quando ele preenche o campo e-mail com dado inválido
        • E campo senha com dado válido;
        • E clica em Entrar;
        • Então o sistema mostra mensagem de erro |
        | **Resultado Esperado** | O apostador não consegue logar no sistema |
        | **Status** | Para desenvolver |
    - TC-Login-04
        
        
        | ID | TC-Login-04 |
        | --- | --- |
        | **Título** | Login com campo e-mail vazio e senha válida |
        | **Descrição** | Apostador tenta realizar login com e-mail vazio |
        | **Pré-condições** | Esta no modal de login |
        | **Passos** | • Dado que o usuário acesse o modal de login;
        • Quando ele preenche o campo senha com dado válido;
        • E tenta clicar em Entrar;
        • Então o sistema mostra mensagem de erro; |
        | **Resultado Esperado** | O apostador não consegue logar no sistema |
        | **Status** | Para desenvolver |
    - TC-Login-05
        
        
        | ID | TC-Login-05 |
        | --- | --- |
        | **Título** | Login com e-mail válido e a senha inválida |
        | **Descrição** | Apostador tenta realizar login com senha inválida |
        | **Pré-condições** | Esta no modal de login |
        | **Passos** | • Dado que o usuário acesse o modal de login;
        • Quando ele preenche o campo e-mail com dados válidos e preenche o campo senha com dado  inválido;
        • E clica em Entrar;
        • Então o sistema mostra mensagem de erro |
        | **Resultado Esperado** | O apostador não consegue logar no sistema |
        | **Status** | Para desenvolver |
    - TC-Login-06
        
        
        | ID | TC-Login-06 |
        | --- | --- |
        | **Título** | Login com campo e-mail válido e senha vazia |
        | **Descrição** | Apostador tenta realizar login com senha vazia |
        | **Pré-condições** | Esta no modal de login |
        | **Passos** | • Dado que o usuário acesse o modal de login;
        • Quando ele preenche o campo e-mail com dado válido;
        • E tenta clicar em Entrar;
        • Então o sistema mostra mensagem de erro; |
        | **Resultado Esperado** | O apostador não consegue logar no sistema |
        | **Status** | Para desenvolver |
    - TC-Login-07
        
        
        | ID | TC-Login-07 |
        | --- | --- |
        | **Título** | Login com sucesso utilizando telefone |
        | **Descrição** | Apostador que já possui cadastro, realiza login com sucesso |
        | **Pré-condições** | Apostador com conta cadastrada |
        | **Passos** | • Dado que o usuário acesse o modal de login;
        • E clica em Telefone
        • Quando ele preenche os campos com dados validos;
        • E clica em Entrar;
        • Então o usuário deve ser direcionado para home page com o menu perfil liberado. |
        | **Resultado Esperado** | O apostador consegue logar no sistema. |
        | **Status** | Desenvolvido |
    - TC-Login-08
        
        
        | ID | TC-Login-08 |
        | --- | --- |
        | **Título** | Login com telefone incorreto |
        | **Descrição** | Apostador tenta realizar login com telefone incorreto |
        | **Pré-condições** | Esta no modal de login |
        | **Passos** | • Dado que o usuário acesse o modal de login;
        • E clica no botão Telefone;
        • Quando ele preenche o campo telefone com dados inválidos e preenche o campo senha com dado válido;
        • E clica em Entrar;
        • Então o sistema mostra mensagem de erro; |
        | **Resultado Esperado** | O apostador não consegue logar no sistema |
        | **Status** | Para desenvolver |
    - TC-Login-09
        
        
        | ID | TC-Login-09 |
        | --- | --- |
        | **Título** | Login com campo telefone vazio e senha válida |
        | **Descrição** | Apostador tenta realizar login com telefone vazio |
        | **Pré-condições** | Esta no modal de login |
        | **Passos** | • Dado que o usuário acesse o modal de login;
        •E clique em Telefone
        • Quando ele preenche o campo senha com dado válido;
        • E tenta clicar em Entrar;
        • Então o sistema mostra mensagem de erro; |
        | **Resultado Esperado** | O apostador não consegue logar no sistema |
        | **Status** | Para desenvolver |
    - TC-Login-10
        
        
        | ID | TC-Login-10 |
        | --- | --- |
        | **Título** | Login com campo telefone válido e senha vazia |
        | **Descrição** | Apostador tenta realizar login com senha vazia |
        | **Pré-condições** | Esta no modal de login |
        | **Passos** | • Dado que o usuário acesse o modal de login;
        • E clique em Telefone
        • Quando ele preenche o campo telefone com dado válido;
        • E tenta clicar em Entrar;
        • Então o sistema mostra mensagem de erro; |
        | **Resultado Esperado** | O apostador não consegue logar no sistema |
        | **Status** | Para desenvolver |
- Cadastro
    - TC-Cadastro-01
        
        
        | ID | TC-Cadastro-01 |
        | --- | --- |
        | **Título** | Cadastro com Sucesso |
        | **Descrição** | Usuário realiza um novo cadastro com sucesso |
        | **Pré-condições** | Estar no site e não possuir conta cadastrada |
        | **Passos** | • Dado que o usuário acessa o modal de cadastro;
        • Quando ele preenche os campos com dados validos;
        • E clica em Cadastrar;
        • Então o sistema deve dar uma mensagem de boas vindas |
        | **Resultado Esperado** | Cadastro realizado com sucesso |
        | **Status** | Para desenvolver |
    - TC-Cadastro-02
        
        
        | ID | TC-Cadastro-02 |
        | --- | --- |
        | **Título** | Cadastro com CPF inválido |
        | **Descrição** | Usuário que não possui cadastro tenta utilizar CPF inválido |
        | **Pré-condições** | Estar no modal de cadastro |
        | **Passos** | • Dado que o usuário acessa o modal de cadastro;
        • Quando ele preenche o campo CPF com dados inválidos
        • E os campos e-mail, telefone e senha com dados validos;
        • E clica em Cadastrar;
        • Então o sistema deve mostrar mensagem de erro. |
        | **Resultado Esperado** | O usuário não consegue criar nova conta. |
        | **Status** | Para desenvolver |
    - TC-Cadastro-03
        
        
        | ID | TC-Cadastro-03 |
        | --- | --- |
        | **Título** | Cadastro com Email em formato inválido  |
        | **Descrição** | Usuário que não possui cadastro tenta utilizar e-mail em formato inválido  |
        | **Pré-condições** | Estar no modal de cadastro |
        | **Passos** | • Dado que o usuário acessa o modal de cadastro;
        • Quando ele preenche o campo CPF, telefone e senha com dados válidos
        • E o campo e-mail com um e-mail de formato inválido;
        • E clica em Cadastrar;
        • Então o sistema deve mostrar mensagem de erro. |
        | **Resultado Esperado** | O usuário não consegue criar nova conta. |
        | **Status** | Para desenvolver |
    - TC-Cadastro-04
        
        
        | ID | TC-Cadastro-04 |
        | --- | --- |
        | **Título** | Cadastro com e-mail já cadastrado |
        | **Descrição** | Usuário tenta realizar cadastro com e-mail já cadastrado |
        | **Pré-condições** | Estar no modal de cadastro |
        | **Passos** | • Dado que o usuário acessa o modal de cadastro;
        • Quando ele preenche o campo CPF, telefone e senha com dados válidos
        • E o campo e-mail com um e-mail já cadastrado;
        • E clica em Cadastrar;
        • Então o sistema deve mostrar mensagem de erro. |
        | **Resultado Esperado** | O usuário não consegue criar nova conta. |
        | **Status** | Para desenvolver |
    - TC-Cadastro-05
        
        
        | ID | TC-Cadastro-05 |
        | --- | --- |
        | **Título** | Cadastro com CPF já cadastrado |
        | **Descrição** | Usuário tenta realizar cadastro com CPF já cadastrado |
        | **Pré-condições** | Estar no modal de cadastro |
        | **Passos** | • Dado que o usuário acessa o modal de cadastro;
        • Quando ele preenche o campo e-mail, telefone e senha com dados válidos
        • E o campo e-mail com um CPF já cadastrado;
        • E clica em Cadastrar;
        • Então o sistema deve mostrar mensagem de erro. |
        | **Resultado Esperado** | O apostador não consegue logar no sistema |
        | **Status** | Para desenvolver |
    - TC-Cadastro-06
        
        
        | ID | TC-Cadastro-06 |
        | --- | --- |
        | **Título** | Cadastro com telefone já cadastrado |
        | **Descrição** | Usuário tenta realizar cadastro com telefone já cadastrado |
        | **Pré-condições** | Estar no modal de cadastro |
        | **Passos** | • Dado que o usuário acessa o modal de cadastro;
        • Quando ele preenche o campo CPF, e-mail e senha com dados válidos
        • E o campo telefone com um telefone já cadastrado;
        • E clica em Cadastrar;
        • Então o sistema deve mostrar mensagem de erro. |
        | **Resultado Esperado** | O apostador não consegue logar no sistema |
        | **Status** | Para desenvolver |
    - TC-Cadastro-07
        
        
        | ID | TC-Cadastro-07 |
        | --- | --- |
        | **Título** | Cadastro com CPF vazio |
        | **Descrição** | O usuário tenta realizar cadastro com CPF vazio |
        | **Pré-condições** | Estar no modal de cadastro |
        | **Passos** | • Dado que o usuário acesse o modal de cadastro;
        • Quando ele deixa o campo CPF vazio e preenche todos os campos com dados válidos
        • E clica em Entrar;
        • Então o sistema mostra mensagem de erro |
        | **Resultado Esperado** | O usuário não conseguirá realizar cadastro. |
        | **Status** | Para desenvolver |
    - TC-Cadastro-08
        
        
        | ID | TC-Cadastro-08 |
        | --- | --- |
        | **Título** | Cadastro com e-mail vazio |
        | **Descrição** | O usuário tenta realizar cadastro com e-mail vazio |
        | **Pré-condições** | Estar no modal de cadastro |
        | **Passos** | • Dado que o usuário acesse o modal de cadastro;
        • Quando ele deixa o campo e-mail vazio e preenche todos os campos com dados válidos
        • E clica em Entrar;
        • Então o sistema mostra mensagem de erro |
        | **Resultado Esperado** | O usuário não conseguirá realizar cadastro. |
        | **Status** | Para desenvolver |
    - TC-Cadastro-09
        
        
        | ID | TC-Cadastro-09 |
        | --- | --- |
        | **Título** | Cadastro com telefone vazio |
        | **Descrição** | O usuário tenta realizar cadastro com telefone vazio |
        | **Pré-condições** | Estar no modal de cadastro |
        | **Passos** | • Dado que o usuário acesse o modal de cadastro;
        • Quando ele deixa o campo telefone vazio e preenche todos os campos com dados válidos
        • E clica em Entrar;
        • Então o sistema mostra mensagem de erro |
        | **Resultado Esperado** | O usuário não conseguirá realizar cadastro. |
        | **Status** | Para desenvolver |
    - TC-Cadastro-10
        
        
        | ID | TC-Cadastro-10 |
        | --- | --- |
        | **Título** | Cadastro com senha sem letras e sem carácter especial |
        | **Descrição** | O usuário tenta realizar cadastro com senha inválida |
        | **Pré-condições** | Estar no modal de cadastro |
        | **Passos** | • Dado que o usuário acesse o modal de cadastro;
        • Quando ele preencher os campos CPF, e-mail e telefone com dados válidos
        • E preenche o campo senha sem letras e sem carácter especial
        • E clica em Entrar;
        • Então o sistema mostra mensagem de erro |
        | **Resultado Esperado** | O usuário não conseguirá realizar cadastro. |
        | **Status** | Para desenvolver |
    - TC-Cadastro-11
        
        
        | ID | TC-Cadastro-11 |
        | --- | --- |
        | **Título** | Cadastro com senha sem letra maiúscula. |
        | **Descrição** | O usuário tenta realizar cadastro com senha inválida |
        | **Pré-condições** | Estar no modal de cadastro |
        | **Passos** | • Dado que o usuário acesse o modal de cadastro;
        • Quando ele preencher os campos CPF, e-mail e telefone com dados válidos
        • E preenche o campo senha sem letras maiúsculas;
        • E clica em Entrar;
        • Então o sistema mostra mensagem de erro |
        | **Resultado Esperado** | O usuário não conseguirá realizar cadastro. |
        | **Status** | Para desenvolver |
        
        ---
        
    - TC-Cadastro-12
        
        
        | ID | TC-Cadastro-12 |
        | --- | --- |
        | **Título** | Cadastro com senha sem letra minuscula |
        | **Descrição** | O usuário tenta realizar cadastro com senha inválida |
        | **Pré-condições** | Estar no modal de cadastro |
        | **Passos** | • Dado que o usuário acesse o modal de cadastro;
        • Quando ele preencher os campos CPF, e-mail e telefone com dados válidos
        • E preenche o campo senha sem letra minuscula;
        • E clica em Entrar;
        • Então o sistema mostra mensagem de erro |
        | **Resultado Esperado** | O usuário não conseguirá realizar cadastro. |
        | **Status** | Para desenvolver |
    - TC-Cadastro-13
        
        
        | ID | TC-Cadastro-13 |
        | --- | --- |
        | **Título** | Cadastro com senha sem carácter especial |
        | **Descrição** | O usuário tenta realizar cadastro com senha inválida |
        | **Pré-condições** | Estar no modal de cadastro |
        | **Passos** | • Dado que o usuário acesse o modal de cadastro;
        • Quando ele preencher os campos CPF, e-mail e telefone com dados válidos
        • E preenche o campo senha sem carácter especial
        • E clica em Entrar;
        • Então o sistema mostra mensagem de erro |
        | **Resultado Esperado** | O usuário não conseguirá realizar cadastro. |
        | **Status** | Para desenvolver |
    - TC-Cadastro-14
        
        
        | ID | TC-Cadastro-14 |
        | --- | --- |
        | **Título** | Cadastro com senha com menos que 8 caracteres. |
        | **Descrição** | O usuário tenta realizar cadastro com senha inválida |
        | **Pré-condições** | Estar no modal de cadastro |
        | **Passos** | • Dado que o usuário acesse o modal de cadastro;
        • Quando ele preencher os campos CPF, e-mail e telefone com dados válidos
        • E preenche o campo senha com menos que 8 caracteres;
        • E clica em Entrar;
        • Então o sistema mostra mensagem de erro |
        | **Resultado Esperado** | O usuário não conseguirá realizar cadastro. |
        | **Status** | Para desenvolver |
    - TC-Cadastro-15
        
        
        | ID | TC-Cadastro-15 |
        | --- | --- |
        | **Título** | Verificar botão de cancelar cadastro (Confirmando cancelamento). |
        | **Descrição** | Usuário fecha modal de cadastro e cancela cadastro |
        | **Pré-condições** | Estar no modal de cadastro |
        | **Passos** | • Dado que o usuário acessa o modal de cadastro;
        • Quando ele clica no botão de fechar;
        • E no modal de confirmação de cancelamento clica em “Sim, quero cancelar”
        • Então modal deve ser fechado e o usuário ficar na home page |
        | **Resultado Esperado** | Sair do modal de cadastro |
        | **Status** | Para desenvolver |
    - TC-Cadastro-16
        
        
        | ID | TC-Cadastro-16 |
        | --- | --- |
        | **Título** | Verificar botão de cancelar cadastro (Continuando com cadastro). |
        | **Descrição** | Usuário fecha modal de cadastro e volta para o modal de cadastro |
        | **Pré-condições** | Estar no modal de cadastro |
        | **Passos** | • Dado que o usuário acessa o modal de cadastro;
        • Quando ele clica no botão de fechar;
        • E no modal de confirmação de cancelamento clica em “Continuar” 
        • Então modal de cadastro deve permanecer aberto. |
        | **Resultado Esperado** | Se manter no modal de cadastro |
        | **Status** | Para desenvolver |
    - TC-Cadastro-17 (Verificar se é aplicável)
        
        
        | ID | TC-Cadastro-17 |
        | --- | --- |
        | **Título** | Cadastro com Sucesso com código de afiliado |
        | **Descrição** | Usuário realiza um novo cadastro com sucesso |
        | **Pré-condições** | Estar no modal de cadastro |
        | **Passos** | • Dado que o usuário acessa o modal de cadastro;
        • Quando ele preenche os campos com dados validos;
        • E preenche o campo código de afiliado
        • E clica em Cadastrar;
        • Então o sistema deve dar uma mensagem de boas vindas |
        | **Resultado Esperado** | Cadastro realizado com sucesso |
        | **Status** | Para desenvolver |
- Apostas
    - TC-Aposta-01
        
        
        | ID | TC-Aposta-01 |
        | --- | --- |
        | **Título** | Aposta esportiva simples |
        | **Descrição** | Apostador realiza uma aposta simples com valor e saldo suficiente. |
        | **Pré-condições** | Apostador com conta cadastrada e saldo suficiente na carteira. |
        | **Passos** | • Dado que o usuário acessa a área de Esportes;
        • Quando seleciona um único evento esportivo;
        • E insere um valor válido na aposta;
        • E clica em Apostar;
        • Então a aposta é registrada com sucesso. |
        | **Resultado Esperado** | Aposta simples registrada com sucesso. |
        | **Status** | Para desenvolver |
    - TC-Aposta-02
        
        
        | ID | TC-Aposta-02 |
        | --- | --- |
        | **Título** | Aposta esportiva múltipla |
        | **Descrição** | Apostador realiza uma aposta múltipla com valor e saldo suficiente. |
        | **Pré-condições** | Apostador com conta cadastrada e saldo suficiente na carteira. |
        | **Passos** | • Dado que o usuário acessa a área de Esportes;
        • Quando seleciona dois ou mais eventos esportivos;
        • E insere um valor válido na aposta;
        • E clica em Apostar;
        • Então a aposta múltipla é registrada com sucesso. |
        | **Resultado Esperado** | Aposta múltipla registrada com sucesso. |
        | **Status** | Para desenvolver |
    - TC-Aposta-03
        
        
        | ID | TC-Aposta-03 |
        | --- | --- |
        | **Título** | Aposta esportiva sem saldo na conta |
        | **Descrição** | Apostador tenta realizar uma aposta sem saldo disponível na carteira. |
        | **Pré-condições** | Apostador com conta cadastrada e saldo zerado. |
        | **Passos** | • Dado que o usuário acessa a área de Esportes;
        • Quando seleciona um evento esportivo;
        • E tenta inserir um valor para aposta;
        • Então o sistema exibe uma mensagem de saldo insuficiente. |
        | **Resultado Esperado** | Sistema bloqueia a aposta e exibe mensagem de saldo insuficiente. |
        | **Status** | Para desenvolver |
    - TC-Aposta-04
        
        
        | ID | TC-Aposta-04 |
        | --- | --- |
        | **Título** | Aposta esportiva acima do valor que possui na carteira |
        | **Descrição** | Apostador tenta realizar uma aposta com valor superior ao saldo. |
        | **Pré-condições** | Apostador com conta cadastrada e saldo inferior ao valor da aposta. |
        | **Passos** | • •Dado que o usuário acessa a área de Esportes;
        • Quando seleciona um evento esportivo;
        • E tenta apostar um valor acima do disponível na carteira;
        • Então o sistema bloqueia a aposta. |
        | **Resultado Esperado** | Aposta não permitida e exibição de mensagem de erro. |
        | **Status** | Para desenvolver |
    - TC-Aposta-05
        
        
        | ID | TC-Aposta-05 |
        | --- | --- |
        | **Título** | Remover um jogo do bilhete antes de realizar aposta |
        | **Descrição** | Apostador remove um dos jogos selecionados antes de concluir a aposta. |
        | **Pré-condições** | Apostador com conta cadastrada e pelo menos dois jogos adicionados ao bilhete. |
        | **Passos** | • Dado que o usuário adiciona múltiplos jogos ao bilhete;
        • Quando opta por remover um jogo;
        • Então o bilhete é atualizado sem o jogo removido. |
        | **Resultado Esperado** | Jogo removido com sucesso do bilhete. |
        | **Status** | Para desenvolver |
    - TC-Aposta-06
        
        
        | ID | TC-Aposta-06 |
        | --- | --- |
        | **Título** | Remover todos os jogos do bilhete antes de realizar aposta |
        | **Descrição** | Apostador remove todos os jogos adicionados ao bilhete. |
        | **Pré-condições** | Apostador com conta cadastrada e pelo menos um jogo adicionado ao bilhete. |
        | **Passos** | • Dado que o usuário adiciona jogos ao bilhete;
        • Quando remove todos os jogos;
        • Então o bilhete fica vazio e a opção de aposta é desabilitada. |
        | **Resultado Esperado** | Bilhete vazio e botão de aposta indisponível. |
        | **Status** | Para desenvolver |
    - TC-Aposta-07
        
        
        | ID | TC-Aposta-07 |
        | --- | --- |
        | **Título** | Realizar aposta esportiva com bônus |
        | **Descrição** | Apostador utiliza bônus disponível para realizar aposta. |
        | **Pré-condições** | Apostador com bônus de aposta disponível. |
        | **Passos** | • Dado que o usuário acessa a área de Esportes;
        • Quando seleciona um evento e escolhe usar bônus;
        • E confirma a aposta;
        • Então a aposta é registrada utilizando o bônus. |
        | **Resultado Esperado** | Aposta confirmada com uso de bônus. |
        | **Status** | Para desenvolver |
    - TC-Aposta-08
        
        
        | ID | TC-Aposta-08 |
        | --- | --- |
        | **Título** | Encerrar Aposta (Cashout) |
        | **Descrição** | Apostador encerra uma aposta ativa antes da finalização do evento. |
        | **Pré-condições** | Aposta ativa e elegível para cashout. |
        | **Passos** | • Dado que o usuário acessa suas apostas ativas;
        • Quando seleciona uma aposta com opção de cashout;
        • E clica em “Encerrar aposta”;
        • Então o sistema calcula e confirma o valor de encerramento. |
        | **Resultado Esperado** | Aposta encerrada com valor calculado de cashout. |
        | **Status** | Para desenvolver |
    - TC-Aposta-09
        
        
        | ID | TC-Aposta-09 |
        | --- | --- |
        | **Título** | Filtrar Apostas |
        | **Descrição** | Apostador utiliza filtros para visualizar apostas específicas. |
        | **Pré-condições** | Apostador com histórico de apostas. |
        | **Passos** | • Dado que o usuário acessa o histórico de apostas;
        • Quando aplica filtros por status, data ou tipo;
        • Então são exibidas apenas as apostas que atendem aos critérios. |
        | **Resultado Esperado** | Lista de apostas filtrada corretamente. |
        | **Status** | Para desenvolver |
    - TC-Aposta-10
        
        
        | ID | TC-Aposta-10 |
        | --- | --- |
        | **Título** | Aposta esportiva com cotação menor do que o permitido |
        | **Descrição** | Apostador tenta realizar uma aposta com cotação inferior ao mínimo aceito. |
        | **Pré-condições** | Sistema com valor mínimo de cotação definido. |
        | **Passos** | • Dado que o usuário acessa a área de Esportes;
        • Quando seleciona um evento com cotação inferior ao permitido;
        • E clica em Apostar;
        • Então o sistema exibe mensagem de impedimento. |
        | **Resultado Esperado** | Aposta bloqueada com alerta de cotação inválida. |
        | **Status** | Para desenvolver |
    - TC-Aposta-11
        
        
        | ID | TC-Aposta-11 |
        | --- | --- |
        | **Título** | Aposta esportiva com valor menor do que o permitido |
        | **Descrição** | Apostador tenta apostar valor inferior ao mínimo permitido. |
        | **Pré-condições** | Sistema com valor mínimo de aposta definido. |
        | **Passos** | • Dado que o usuário acessa a área de Esportes;
        • Quando tenta apostar um valor abaixo do permitido;
        • Então o sistema bloqueia a aposta e informa o valor mínimo. |
        | **Resultado Esperado** | Aposta não realizada e exibição de alerta sobre valor mínimo. |
        | **Status** | Para desenvolver |
- Depósito
    - TC-Deposito-01
        
        
        | ID | TC-Deposito-01 |
        | --- | --- |
        | **Título** | Depósito de valor inteiro |
        | **Descrição** | Usuário realiza um depósito com valor inteiro dentro dos limites permitidos. |
        | **Pré-condições** | Conta ativa e método de pagamento disponível. |
        | **Passos** | • Dado que o usuário acessa a área de Depósito;
        • Quando insere um valor inteiro permitido;
        • E clica em Depositar;
        • Então o sistema processa o depósito. |
        | **Resultado Esperado** | Depósito registrado com sucesso. |
        | **Status** | Para desenvolver |
    - TC-Deposito-02
        
        
        | ID | TC-Deposito-02 |
        | --- | --- |
        | **Título** | Depósito de valor “quebrado” |
        | **Descrição** | Usuário realiza um depósito com valor decimal. |
        | **Pré-condições** | Conta ativa e método de pagamento disponível. |
        | **Passos** | • Dado que o usuário acessa a área de Depósito;
        • Quando insere um valor com centavos (ex: 123,45);
        • E clica em Depositar;
        • Então o sistema aceita e processa o valor. |
        | **Resultado Esperado** | Depósito registrado com valor decimal. |
        | **Status** | Para desenvolver |
    - TC-Deposito-03
        
        
        | ID | TC-Deposito-03 |
        | --- | --- |
        | **Título** | Depósito de valor menor que o mínimo permitido |
        | **Descrição** | Usuário tenta realizar um depósito abaixo do limite mínimo. |
        | **Pré-condições** | Conta ativa e método de pagamento disponível. |
        | **Passos** | • Dado que o usuário acessa a área de Depósito;
        • Quando insere um valor abaixo do mínimo exigido;
        • Então o sistema bloqueia a ação e exibe mensagem. |
        | **Resultado Esperado** | Depósito não permitido com exibição de alerta. |
        | **Status** | Para desenvolver |
    - TC-Deposito-04
        
        
        | ID | TC-Deposito-04 |
        | --- | --- |
        | **Título** | Tentativa de depósito com valor vazio |
        | **Descrição** | Usuário tenta realizar depósito sem informar valor. |
        | **Pré-condições** | Conta ativa e método de pagamento disponível. |
        | **Passos** | • Dado que o usuário acessa a área de Depósito;
        • Quando deixa o campo de valor em branco;
        • E clica em Depositar;
        • Então o sistema impede o envio. |
        | **Resultado Esperado** | Depósito não permitido e mensagem de campo obrigatório. |
        | **Status** | Para desenvolver |
    - TC-Deposito-05
        
        
        | ID | TC-Deposito-05 |
        | --- | --- |
        | **Título** |  Tentativa de depósito com valor negativo |
        | **Descrição** | Usuário tenta realizar um depósito com valor negativo. |
        | **Pré-condições** | Conta ativa e método de pagamento disponível. |
        | **Passos** | • Dado que o usuário acessa a área de Depósito;
        • Quando insere um valor negativo;
        • E clica em Depositar;
        • Então o sistema bloqueia a transação. |
        | **Resultado Esperado** | Depósito negado com alerta de valor inválido. |
        | **Status** | Para desenvolver |
    - TC-Deposito-06
        
        
        | ID | TC-Deposito-06 |
        | --- | --- |
        | **Título** | Depósito utilizando cupom de bônus cassino |
        | **Descrição** | Usuário realiza depósito com cupom válido de bônus cassino. |
        | **Pré-condições** | Conta ativa, método de pagamento disponível e cupom válido. |
        | **Passos** | • Dado que o usuário acessa a área de Depósito;
        • Quando insere valor e aplica o cupom de bônus cassino;
        • E clica em Depositar;
        • Então o depósito e o bônus são aplicados. |
        | **Resultado Esperado** | Depósito concluído e bônus cassino creditado. |
        | **Status** | Para desenvolver |
    - TC-Deposito-07
        
        
        | ID | TC-Deposito-07 |
        | --- | --- |
        | **Título** | Depósito utilizando cupom de bônus esportivo |
        | **Descrição** | Usuário realiza depósito com cupom válido de bônus esportivo. |
        | **Pré-condições** | Conta ativa, método de pagamento disponível e cupom válido. |
        | **Passos** | • Dado que o usuário acessa a área de Depósito;
        • Quando insere valor e aplica o cupom de bônus esportivo;
        • E clica em Depositar;
        • Então o sistema processa o depósito com o bônus. |
        | **Resultado Esperado** | Depósito realizado e bônus esportivo aplicado. |
        | **Status** | Para desenvolver |
    - TC-Deposito-08
        
        
        | ID | TC-Deposito-08 |
        | --- | --- |
        | **Título** | Depósito bem-sucedido selecionando valor pré-definido |
        | **Descrição** | Usuário realiza depósito escolhendo um dos valores rápidos sugeridos. |
        | **Pré-condições** | Conta ativa e método de pagamento disponível. |
        | **Passos** | • Dado que o usuário acessa a área de Depósito;
        • Quando seleciona um valor pré-definido (ex: R$50);
        • E clica em Depositar;
        • Então o sistema registra o depósito. |
        | **Resultado Esperado** | Depósito confirmado com valor sugerido. |
        | **Status** | Para desenvolver |
    - TC-Deposito-09
        
        
        | ID | TC-Deposito-09 |
        | --- | --- |
        | **Título** | Depósito com valor pré-definido e cupom de bônus cassino |
        | **Descrição** | Usuário seleciona valor pré-definido e aplica cupom válido de bônus cassino. |
        | **Pré-condições** | Conta ativa, método de pagamento disponível e cupom válido. |
        | **Passos** | • Dado que o usuário seleciona um valor pré-definido;
        • Quando aplica um cupom de bônus cassino válido;
        • E clica em Depositar;
        • Então o valor é depositado com o bônus aplicado. |
        | **Resultado Esperado** | Depósito registrado e bônus cassino concedido. |
        | **Status** | Para desenvolver |
    - TC-Deposito-10
        
        
        | ID | TC-Deposito-10 |
        | --- | --- |
        | **Título** | Depósito com valor pré-definido e cupom de bônus esportivo |
        | **Descrição** | Usuário seleciona valor pré-definido e aplica cupom de bônus esportivo. |
        | **Pré-condições** | Conta ativa, método de pagamento disponível e cupom válido. |
        | **Passos** | • Dado que o usuário escolhe um valor pré-definido;
        • Quando aplica cupom de bônus esportivo válido;
        • E clica em Depositar;
        • Então o valor é processado com o bônus esportivo ativado. |
        | **Resultado Esperado** | Depósito finalizado com bônus esportivo aplicado. |
        | **Status** | Para desenvolver |
    - TC-Deposito-11
        
        
        | ID | TC-Deposito-11 |
        | --- | --- |
        | **Título** | Atualização de campo ao selecionar valor pré-definido |
        | **Descrição** | Verifica se o campo de valor é atualizado corretamente ao selecionar valor sugerido. |
        | **Pré-condições** | Conta ativa e método de pagamento disponível. |
        | **Passos** | • Dado que o usuário acessa a área de Depósito;
        • Quando clica em um dos valores pré-definidos;
        • Então o campo de valor é automaticamente preenchido. |
        | **Resultado Esperado** | Campo de valor preenchido corretamente. |
        | **Status** | Para desenvolver |
    - TC-Deposito-12
        
        
        | ID | TC-Deposito-12 |
        | --- | --- |
        | **Título** | Depósito com cupom inválido (inexistente) |
        | **Descrição** | Usuário tenta aplicar cupom inexistente durante depósito. |
        | **Pré-condições** | Conta ativa e método de pagamento disponível. |
        | **Passos** | • Dado que o usuário insere um valor de depósito;
        • Quando digita um cupom inválido;
        • E clica em Depositar;
        • Então o sistema exibe erro de cupom inexistente. |
        | **Resultado Esperado** | Depósito não realizado com aviso de cupom inválido. |
        | **Status** | Para desenvolver |
    - TC-Deposito-13
        
        
        | ID | TC-Deposito-13 |
        | --- | --- |
        | **Título** | Depósito com cupom expirado |
        | **Descrição** | Usuário tenta utilizar um cupom que está fora do prazo de validade. |
        | **Pré-condições** | Conta ativa, método de pagamento disponível e cupom expirado. |
        | **Passos** | • Dado que o usuário insere um valor de depósito;
        • Quando aplica um cupom expirado;
        • E clica em Depositar;
        • Então o sistema bloqueia a aplicação do cupom. |
        | **Resultado Esperado** | Depósito sem bônus e exibição de cupom expirado. |
        | **Status** | Para desenvolver |
    - TC-Deposito-14
        
        
        | ID | TC-Deposito-14 |
        | --- | --- |
        | **Título** | Consultar histórico de transações |
        | **Descrição** | Usuário verifica se o depósito foi registrado corretamente no histórico. |
        | **Pré-condições** | Depósito realizado (pendente, confirmado ou falho). |
        | **Passos** | • Dado que o usuário acessa o histórico de transações;
        • Quando visualiza os detalhes do depósito realizado;
        • Então são exibidos status e dados da transação. |
        | **Resultado Esperado** | Histórico mostra status e dados corretos do depósito. |
        | **Status** | Para desenvolver |
    - TC-Deposito-15 (Verificar se é aplicável)
        
        
        | ID | TC-Deposito-15 |
        | --- | --- |
        | **Título** | Expiração do QR Code antes do pagamento |
        | **Descrição** | Simula cenário onde o QR Code expira antes do usuário realizar o pagamento. |
        | **Pré-condições** | Conta ativa e método de pagamento disponível. |
        | **Passos** | • Dado que o usuário gera um QR Code para pagamento;
        • Quando aguarda tempo suficiente para que ele expire;
        • Então o sistema exibe mensagem de QR Code vencido. |
        | **Resultado Esperado** | QR Code expira e impede o pagamento. |
        | **Status** | Para desenvolver |

## 8. Critérios de Aceitação

- Todos os testes críticos executados com sucesso

## 9. Riscos e Mitigação

| Risco | Impacto | Probabilidade | Ação de Mitigação |
| --- | --- | --- | --- |
| Atraso no cronograma |  |  |  |
| Falta de recursos |  |  |  |
| Problemas técnicos |  |  |  |

## 10. Relatórios e Métricas

- Quantidade de testes executados
- Tempo de execução dos testes
