# language: pt

Funcionalidade: Configuração de Produto na EBAC-SHOP

  Como cliente da EBAC-SHOP
  Eu quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Cenário: Configurar produto com opções obrigatórias

    Dado que estou na página de detalhes do produto
    Quando configuro o produto com as seguintes opções:
    Exemplos:
      | Opção      | Valor |
      | Cor        | Azul  |
      | Tamanho    | M     |
      | Quantidade | 2     |

    E clico no botão "Adicionar ao Carrinho"
    Então o produto deve ser adicionado ao carrinho com sucesso

    Critérios de Aceitação:
      - A cor, o tamanho e a quantidade são obrigatórios
      - O produto é adicionado ao carrinho com as configurações selecionadas

  Cenário: Limpar configurações do produto

    Dado que estou na página de detalhes do produto com configurações prévias
    Quando clico no botão "Limpar"
    Então as seleções de cor, tamanho e quantidade devem ser resetadas

    Critérios de Aceitação:
      - Ao clicar no botão "Limpar", as configurações devem voltar ao estado original

  Cenário: Restrição na quantidade de produtos por venda

    Dado que estou na página de detalhes do produto
    Quando tento adicionar mais de 10 produtos ao carrinho
    Então devo receber uma mensagem de erro informando que apenas 10 produtos são permitidos por venda

    Critérios de Aceitação:
      - Apenas 10 produtos podem ser adicionados ao carrinho por venda
