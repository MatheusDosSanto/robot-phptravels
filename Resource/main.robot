*** Settings ***
Library    SeleniumLibrary

## data
Resource    data/geral.robot
Resource    data/registro.robot

## shared
Resource    shared/setup_teardown.robot

## pages
Resource    pages/home_page.robot
Resource    pages/login_page.robot
Resource    pages/registro_page.robot