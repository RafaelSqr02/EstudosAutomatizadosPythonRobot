*** Settings ***
Documentation   Documentação da API: https://fakerestapi.azurewebsites.net/index.html
Suite Setup     Conectar a minha API

*** Test Cases ***
Buscar a listagem dos livros (GET em todos os livros)
    Requisitar todos os livros


