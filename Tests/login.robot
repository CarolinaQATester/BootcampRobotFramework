*** Settings ***
Documentation     
Library           SeleniumLibrary



*** Variables ***
${BASE_URL}        https://automationpratice.com.br/
${BROWSER}         Chrome

${LOGIN}            xpath://a[@href='/login']
${EMAIL}            xpath://input[@id='user'] 
${PASSWORD}         xpath://input[@id='password'] 
${BTN_LOGIN}        xpath://button[@id='btnLogin'] 
${BTN_OK}           xpath://button[contains(text(),'OK')]

${EMAIL_INVALIDO}            xpath://input[@id='user'] 
${PASSWORD_INVALIDO}         xpath://input[@id='password'] 


*** Keywords ***
Abrir o site
    Open Browser  ${BASE_URL}  ${BROWSER}
    Maximize Browser Window
    Click Element   ${LOGIN}
Preencher o formulario de login
    Input Text    ${EMAIL}  qazando@gmail.com
    Input Text    ${PASSWORD}  123456
    Click Element  ${BTN_LOGIN}
Preencher o formulario de login invalidas
    Input Text    ${EMAIL}  qazando@gmail.com
    Input Text    ${PASSWORD}  12345
    Click Element  ${BTN_LOGIN}
Fechar navegador 
   Close Browser

Validar login com sucesso
    Page Should Contain   Login realizado
    Click Element   ${BTN_OK}   
Validar login invalido
    Page Should Contain   Senha inválida.
 
Espera   
    ${implicit_wait}=   get selenium implicit wait 
    log to console    ${implicit_wait}
    set selenium implicit wait    5seconds 

*** Test Cases ***
Cenario 01: Validar login com credenciais validas
    [Tags]  Regressivo
    Abrir o site
    Espera
    Preencher o formulario de login
    Espera
    Validar login com sucesso
    Fechar navegador
 Cenario 02: Validar login com credenciais invalidas
    [Tags]  Regressivo
    Abrir o site
    Espera
    Preencher o formulario de login invalidas
    Espera
    Validar login invalido
    Fechar navegador