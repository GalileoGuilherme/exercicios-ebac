#language: pt

Funcionalidade: Concluir Cadastro na EBAC-SHOP

  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

Cenário: Cadastrar com todos os dados obrigatórios

  Dado que estou na página de cadastro
  Quando preencho todos os campos obrigatórios:
    | Campo             | Valor                     |
    | Nome*             | João da Silva             |
    | E-mail*           | joao@example.com          |
    | Senha*            | minha_senha_secreta       |
    | Confirmar Senha*  | minha_senha_secreta       |
    | Endereço*         | Rua Principal, 123        |
    | Cidade*           | São Paulo                 |
    | CEP*              | 12345-678                 |
    | Telefone          | (11) 98765-4321           |
  E clico no botão "Concluir Cadastro"
  Então devo ser redirecionado para a finalização da compra

  Critérios de Aceitação:
    - O cadastro deve ser concluído com todos os dados obrigatórios marcados com asteriscos (*)
    - O usuário deve ser redirecionado para a finalização da compra

Cenário: Tentativa de cadastro com e-mail inválido

  Dado que estou na página de cadastro
  Quando preencho o campo de e-mail com um formato inválido:
    | Campo             | Valor                 |
    | Nome*             | Maria da Silva        |
    | E-mail*           | email_invalido.com    |
    | Senha*            | senha_secreta         |
    | Confirmar Senha*  | senha_secreta         |
    | Endereço*         | Av. Principal, 456    |
    | Cidade*           | Rio de Janeiro        |
    | CEP*              | 54321-876             |
    | Telefone          | (21) 98765-4321       |
  E clico no botão "Concluir Cadastro"
  Então devo ver uma mensagem de erro indicando que o formato do e-mail é inválido

  Critérios de Aceitação:
    - Não deve permitir o cadastro com um campo de e-mail com formato inválido
    - Deve exibir uma mensagem de erro informando sobre o formato inválido do e-mail

Cenário: Tentativa de cadastro com campos vazios

  Dado que estou na página de cadastro
  Quando tento cadastrar com campos vazios
  E clico no botão "Concluir Cadastro"
  Então devo ver uma mensagem de alerta indicando que campos obrigatórios estão vazios

  Critérios de Aceitação:
    - Ao tentar cadastrar com campos vazios, uma mensagem de alerta deve ser exibida
