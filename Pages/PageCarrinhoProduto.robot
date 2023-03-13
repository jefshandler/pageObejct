*** Settings ***
Resource    config.robot

*** Keywords ***
E verifico no carrinho nome e preco [${indice}]
    ${ArquivoJson}    Ler Arquivo Json [Vendors\\dados_produtos.json]
    Set Global Variable    ${ArquivoJson}
    Set Global Variable    ${indice}
    ${produto_pesquisado}    Get From Dictionary  ${ArquivoJson[${indice}]}   produto_pesquisado
    ${valor_carrinho}    Get From Dictionary  ${ArquivoJson[${indice}]}   valor_carrinho
    ${nome_produto_carrinho}=    Get Text    css=span[data-a-word-break='normal'] span[aria-hidden='true']
    ${valor_produto_carrinho}=    Get Text    css=.a-size-medium.a-color-base.sc-price.sc-white-space-nowrap.sc-product-price.a-text-bold
    Log To Console    Nome Produto Carrinho: ${nome_produto_carrinho}
    Log To Console    Valor Produto Carrinho: ${valor_produto_carrinho}
    Should Be Equal    ${nome_produto_carrinho}    ${produto_pesquisado}
    Should Be Equal    ${valor_produto_carrinho}    ${valor_carrinho}
E fecho o navegador
    Fechar Navegador