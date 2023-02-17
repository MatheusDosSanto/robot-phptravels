*** Settings ***
Resource    ../main.robot

*** Variables ***
&{home}
...    a_signup = //a[@ui-sref="app.register"]
...    a_login =  //a[@ui-sref="app.login"]
...    a_home = //li[@class='nav-item']/a[@ui-sref="app.home"]

*** Keywords ***
