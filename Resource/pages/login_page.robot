*** Settings ***
Resource    ../main.robot

*** Variables ***
&{login}
...    input_email = //input[@ng-model='$ctrl.formData.email']
...    input_password = //input[@ng-model='$ctrl.formData.password']
...    button_signup = //button[@ng-bind='$ctrl.title']

*** Keywords ***
Dado que acesso o demo.realworld.io
    Open Browser    ${geral.URL}    ${geral.Browser}
    Maximize Browser Window
E realizo login
    Wait Until Element Is Visible    ${home.a_login}    5
    Click Element    ${home.a_login}
    Input Text    ${login.input_email}    ${dados_registro.email}
    Input Text    ${login.input_password}    ${dados_registro.password}
    Click Button    ${login.button_signup}