*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${Browser}    gc

*** Test Cases ***
Multiple file upload
    Open Browser    url=https://www.airbnb.com/login    browser=${Browser}
    Click Button    css:button._1iwsukp3
    Switch Window    NEW
    Input Text    id:email    art@demo.com
    Input Password    id:pass    password    
    