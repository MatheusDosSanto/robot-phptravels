*** Settings ***
Resource    ../main.robot

*** Variables ***
&{registro}
...    input_registro_username = //input[@ng-model='$ctrl.formData.username']
...    input_registro_email = //input[@ng-model='$ctrl.formData.email']
...    input_registro_password = //input[@ng-model='$ctrl.formData.password']
...    button_registro_signup = //button[@ng-bind='$ctrl.title']

*** Keywords ***
E realizo cadastro
    Wait Until Element Is Visible    ${home.a_login}
    Click Element    ${home.a_login}
    Input Text    ${registro.input_username}    ${dados_registro.new_username}
    Input Text    ${registro.input_email}    ${dados_registro.new_email}
    Input Text    ${registro.input_password}    ${dados_registro.new_password}
    Click Button    ${registro.button_signup}