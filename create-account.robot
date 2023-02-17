*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#Dados
${new_username}    automation Testing4
${new_email}    automtinon@testingq23.com
${new_password}    123456
${email}    automtinon@testingq.com
${password}    123456

#Pagina home
${a_signup}    //a[@ui-sref="app.register"]
${a_login}    //a[@ui-sref="app.login"]
${a_home}    //li[@class='nav-item']/a[@ui-sref="app.home"]

#Elementos de signUp
${input_username}    //input[@ng-model='$ctrl.formData.username']
${input_email}    //input[@ng-model='$ctrl.formData.email']
${input_password}    //input[@ng-model='$ctrl.formData.password']
${button_signup}    //button[@ng-bind='$ctrl.title']

#Elementos de signIn
${input_login_email}    //input[@ng-model='$ctrl.formData.email']

*** Keywords ***
Acessar o site
    Open Browser    https://demo.realworld.io/    chrome
    Maximize Browser Window
Acessar pagina de cadastro
    Click Element    ${a_signup}
Acessar a pagina de login
    Click Element    ${a_login}
Preencher campos do cadastro e criar conta
    Input Text    ${input_username}    ${new_username}
    Input Text    ${input_email}    ${new_email}
    Input Text    ${input_password}    ${new_password}
    Click Button    ${button_signup}

Dado que já possuo um conta, realizar login no site
    Input Text    ${input_email}    ${email}
    Input Text    ${input_password}    ${password}
    Click Button    ${button_signup}

*** Test Cases ***
Cadastrar conta
    Acessar o site
    Acessar pagina de cadastro
    Preencher campos do cadastro e criar conta

Logar no site
    Acessar o site
    Acessar a pagina de login
    Dado que já possuo um conta, realizar login no site
    