*** Settings ***
Documentation     
Library           SeleniumLibrary



*** Variables ***
${BASE_URL}        https://automationpratice.com.br/
${BROWSER}         Chrome

${LOGIN}            link:Login
${EMAIL}            xpath://input[@id='user'] 
${PASSWORD}         xpath://input[@id='password'] 
${BTN_LOGIN}        xpath://button[@id='btnLogin'] 
${BTN_OK}           xpath://button[contains(text(),'OK')]


*** Keywords ***
Abrir o site
    Open Browser  ${BASE_URL}  ${BROWSER}
    Maximize Browser Window
    Click Link   ${LOGIN}
Preencher o formulario de login
    Input Text    ${EMAIL}  qazando@gmail.com
    Input Text    ${PASSWORD}  123456
    Click Element  ${BTN_LOGIN}
Fechar navegador 
   Close Browser

Validar login com sucesso
    Page Should Contain   Login realizado
    Click Element   ${BTN_OK}   
Espera   
    ${implicit_wait}=   get selenium implicit wait 
    log to console    ${implicit_wait}
    set selenium implicit wait    25seconds 

*** Test Cases ***
Cenario 01: Validar login
    Abrir o site
    Espera
    Preencher o formulario de login
    Espera
    Validar login com sucesso
 