# language: pt

Feature: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Scenario: Selecionar configurações do produto
    Given que estou na página de configuração do produto
    When seleciono a cor, tamanho e quantidade
    Then o sistema deve permitir a seleção

  Scenario: Limpar configurações
    Given que selecionei cor, tamanho e quantidade
    When clico no botão "limpar"
    Then todas as seleções devem voltar ao estado original

  Scenario Outline: Limite de quantidade de produtos
    Given que estou configurando um produto
    When seleciono a quantidade <quantidade>
    Then o sistema deve validar se a quantidade está dentro do limite permitido

    Examples:
      | quantidade |
      | 1         |
      | 5         |
      | 10        |
      | 11        |
