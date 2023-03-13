*** Settings ***
Resource    ../Resource/Base.robot

*** Test Cases ***
Pesquisar Produto
# Percorre todos os produtos no arquivo JSON
    ${ArquivoJson}    Ler Arquivo Json [Vendors\\dados_produtos.json]
    ${tamanhoJson}    Get Length    ${ArquivoJson}
    Log To Console    Quantidade de Produtos: ${tamanhoJson}
     
    FOR    ${indice}    IN RANGE    0    ${tamanhoJson}
        Dado que acessei a tela inicial
        Quando eu preencher o campo pesquisar [${indice}]
        E clicar no botao de pesquisa
        E clico no produto
        E verifico nome e preco [${indice}]
        E adiciono o produto no carrinho
        Entao verifico mensagem de sucesso da inclusao
        E clico no botao ir ao carrinho
        E verifico no carrinho nome e preco [${indice}]
        E fecho o navegador
    END