# language: pt

Funcionalidade: Autenticação na EBAC-SHOP

  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

  Cenário: Login bem-sucedido com dados válidos

    Dado que estou na página de login
    Quando insiro as seguintes credenciais válidas:
    Exemplos:
      | Usuário                | Senha               |
      | minha_conta@example.com | minha_senha_secreta |

    E clico no botão "Entrar"
    Então devo ser direcionado para a tela de checkout

    Critérios de Aceitação:
      - Ao inserir dados válidos, o usuário deve ser direcionado para a tela de checkout

  Cenário: Login falha com campos inválidos

    Dado que estou na página de login
    Quando insiro uma combinação inválida de credenciais:
    Exemplos:
      | Usuário          | Senha            |
      | usuário_invalido | senha_incorreta  |

    E clico no botão "Entrar"
    Então devo ver uma mensagem de alerta indicando "Usuário ou senha inválidos"

    Critérios de Aceitação:
      - Ao inserir um dos campos inválidos, uma mensagem de alerta deve ser exibida
