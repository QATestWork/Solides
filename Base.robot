*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}              https://nayaracorporation.solides.jobs/

*** Keywords ***
Nova sessão
    Open Browser                 ${url}     firefox

Encerra sessão
    Capture Page Screenshot
    Close Browser 
