# language: pt

Feature: Tela de cadastro - Checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Scenario: Cadastro com todos os campos obrigatórios preenchidos
    Given que estou na tela de checkout
    When preencho todos os campos obrigatórios
    Then o sistema deve permitir a finalização do cadastro

  Scenario: Cadastro com e-mail inválido
    Given que estou na tela de checkout
    When insiro um e-mail com formato inválido
    Then o sistema deve exibir a mensagem "Formato de e-mail inválido"

  Scenario: Cadastro com campos vazios
    Given que estou na tela de checkout
    When tento concluir sem preencher todos os campos obrigatórios
    Then o sistema deve exibir uma mensagem de alerta
