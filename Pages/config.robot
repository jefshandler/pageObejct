*** Settings ***
Library    SeleniumLibrary
Library    JSONLibrary
Library    BuiltIn
Library    Collections


*** Variables ***
${url}      https://www.amazon.com.br
${browser}  Chrome

*** Keywords ***
Abrir Site
    open browser   ${url}   ${browser}
    Sleep    3

Fechar Navegador
    Close Browser    

Ler Arquivo Json [${LocalArquivoJson}]    
    ${ArquivoJson}     Load Json From File     ${LocalArquivoJson}    UTF-8
    Log To Console    \nArquivo utilizado: ${LocalArquivoJson}
    [Return]            ${ArquivoJson}