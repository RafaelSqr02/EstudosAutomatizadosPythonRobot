*** Settings ***
Resource           ../Resource/Resource.robot
Test Setup         Abrir navegador
Test Teardown      Fechar navegador

#SETUP roda kayword antes da suite ou antes de um teste
#TEARDOWN roda keyword depois de uma suite ou um teste

*** Variables ***

*** Test Case ***
Cenário de teste 01: Pesquisar produto existente
    Dado que estou na página home do site 
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultado da busca
    
Cenário de teste 02: Pesquisar produto não existente
    Dado que estou na página home do site 
    Quando eu pesquisar pelo produto "Blouse"
    Então a página deve exibir a mensagem "No Results were found for you search "Item não existe""

*** Keywords ***
Dado que estou na página home do site 
    Acessar a página home do site 

Quando eu pesquisar pelo produto "${PRODUTO}"
    Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Clicar no botão pesquisar

Então o produto "${PRODUTO}" deve ser listado na página de resultado da busca
    Conferir se o produto "${PRODUTO}" foi listado no site
