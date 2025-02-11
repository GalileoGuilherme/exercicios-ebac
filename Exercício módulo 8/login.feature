# language: pt

Feature: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

  Scenario: Login bem-sucedido
    Given que estou na página de login
    When insiro um email e senha válidos
    Then sou direcionado para a tela de checkout

  Scenario: Login com credenciais inválidas
    Given que estou na página de login
    When insiro um email ou senha inválidos
    Then o sistema deve exibir a mensagem "Usuário ou senha inválidos"
