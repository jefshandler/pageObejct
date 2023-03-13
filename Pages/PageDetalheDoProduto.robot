*** Settings ***
Resource    config.robot

*** Keywords ***
E verifico nome e preco [${indice}]
    ${ArquivoJson}    Ler Arquivo Json [Vendors\\dados_produtos.json]
    Set Global Variable    ${ArquivoJson}
    Set Global Variable    ${indice}
    # Obtém a quantidade de produtos no arquivo JSON
    ${quantidade_produtos}    Get Length    ${ArquivoJson}
    ${produto_pesquisado}    Get From Dictionary  ${ArquivoJson[${indice}]}   produto_pesquisado
    ${valor_produto}    Get From Dictionary  ${ArquivoJson[${indice}]}   valor_produto
    Element Should Contain    xpath=//span[@id='productTitle']    ${produto_pesquisado}
    Element Should Contain    class=a-price-whole     ${valor_produto}
    # Capture Page Screenshot   produtoEpreco+${produto_pesquisado}+.png
    Capture Page Screenshot    ProdutoComValorde${valor_produto}.png

E adiciono o produto no carrinho
    Click Element    css=input[title='Adicionar ao carrinho']
Entao verifico mensagem de sucesso da inclusao
    ${mensagem_de_sucesso}    Get From Dictionary  ${ArquivoJson[${indice}]}   mensagem_de_sucesso
    ${texto_do_elemento}=    Get Text    css=div[data-csa-c-content-id='NATC_SMART_WAGON_CONF_MSG_SUCCESS_CONTENT'] span
    Log To Console    Mensagem site: ${texto_do_elemento}
    Should Be Equal    ${texto_do_elemento}    ${mensagem_de_sucesso}
E clico no botao ir ao carrinho
    Click Element    xpath=//a[@href='/gp/cart/view.html?ref_=sw_gtc']
