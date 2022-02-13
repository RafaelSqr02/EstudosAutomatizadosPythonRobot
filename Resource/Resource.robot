*** Settings ***
Library             Selenium

*** Variables ***
${BROWSER}      chrome
${URL}          http://automationpractice.com/index.php


*** Keywords ***
####SETUPS E TEARDOWN
Abrir navegador
    Open Browser    http://automationpractice.com/index.php  ${BROWSER}

Fechar navegador
    Close Browser

###Passo-a-Passo
Acessar a página home do site 
    Go to               ${URL}
    Title Should Be     My Store

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text          name=search_query    ${PRODUTO}

Clicar no botão pesquisar
    Click Element       name=submit_search

Conferir se o produto "${PRODUTO}" foi listado no site
    Wait until Element Is Visible   css=#center_column > h1
    Title Should Be                 Search - My StoreXX
    