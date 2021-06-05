*** Settings ***
Library    Selenium

*** Variables ***
${URL}    http://automationpractice.com
${BROWSER}    chrome

*** Test Case ***
Caso de Teste 01: Pesquisar produto existente
    Dado que estou na página home do síte
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" foi listadona página de resultado de busca

Caso de Teste 02: Pesquisar produto não existente
    Dado que estou na página home do síte
    Quando eu pesquisar pelo produto "itemNãoExistente"
    Então a página deve exibir a mensagem "No results ere found for your search "itemNãoExistente""

*** Keywords ***
