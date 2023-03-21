kkk*** Settings ***
Resource    config.robot

*** Keywords ***
Dado que acessei a tela inicial
    Abrir Site
Quando eu preencher o campo pesquisar [${indice}]
    ${ArquivoJson}    Ler Arquivo Json [Vendors\\dados_produtos.json]
    Set Global Variable    ${ArquivoJson}
    Set Global Variable    ${indice}
    ${termo_pesquisa}    Get From Dictionary  ${ArquivoJson[${indice}]}   termo_pesquisa
    Wait Until Element Is Visible    id=twotabsearchtextbox
    Input Text    id=twotabsearchtextbox    ${termo_pesquisa}
E clicar no botao de pesquisa
    Wait Until Element Is Visible    id=nav-search-submit-button
    Click Element    id=nav-search-submit-button
    
E clico no produto
    ${produto_pesquisado}    Get From Dictionary  ${ArquivoJson[${indice}]}   produto_pesquisado
    Wait Until Element Is Visible    xpath=//*[contains(text(), '${produto_pesquisado}')]
    Click Element    xpath=//*[contains(text(), '${produto_pesquisado}')]
  
    Sleep    5
