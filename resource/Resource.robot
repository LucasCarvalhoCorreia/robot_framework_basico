*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${URL}    http://automationpractice.com
${BROWSER}    chrome

*** Keywords ***
###SETUP e Teardown
Abrir navegador
    Open Browser    ${URL}   ${BROWSER}

Fechar navegador
    Close Browser

### Passo-a-Passo
Acessar a página home do site
    Title Should Be   My Store

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text    id=search_query_top    ${PRODUTO}

Clicar no botão pesquisar
    Click element   name=submit_search

Conferir se o produto "${PRODUTO}" foi listado no site
    Wait Until Element Is Visible     css=#center_column > h1
    Title Should Be                   Search - My Store
    Page Should Contain Image         xpath=//*[@id="center_column"]//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']
    Page Should Contain Link          xpath=//*[@id="center_column"]//a[@class="product-name"][contains(text(),"${PRODUTO}")]

Conferir se o produto "${PRODUTO}"
    Wait Until Element Is Visible     css=#center_column > h1
    Title Should Be                   Search - My Store
    Page Should Contain               text=0 results have been found.
    Page Should Contain               text=No results were found for your search
