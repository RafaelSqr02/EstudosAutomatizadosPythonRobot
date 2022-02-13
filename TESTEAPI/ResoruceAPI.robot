*** Settings ***
Documentation   Documentação da API: https://fakerestapi.azurewebsites.net/index.html
Library         RequestsLibrary
Library         Collections
Suite Setup     Conectar a minha API


*** Variables ***
${URL_API}          https://fakerestapi.azurewebsites.net/api/

*** Keywords ***
Conectar a minha API
    Create Session      fakeAPI     ${URL_API}   

Requisitar todos os livros
    ${RESPOSTA}     Get Request     fakeAPI   Books
    Log             ${RESPOSTA.text}

