*** Settings ***
Resource         ../resource/Resource.robot
Test Setup     Abrir navegador
Test Teardown   Fechar navegador
### SETUP ele roda keywords antes da suite ou antes de um Teste
### TEARDOWN ele roda keyword depois de uma suite ou um Teste

*** Variables ***

*** Test Case ***
Caso de Teste 01: Pesquisar produto existente
    Acessar a página home do site
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado no site

Caso de Teste 02: Pesquisar produto não existente
    Acessar a página home do site
    Digitar o nome do produto "itemNãoExistente" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "No results were found for your search "itemNãoExistente""

# *** Keywords ***
