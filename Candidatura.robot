*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Variables ***


${click_login}          xpath=//div[2]/button/div
${Click_email}          xpath=//input[@name='user']
${Click_senha}          xpath=//div[@id='root']/main/section/article[2]/div/form/div[2]/div/div/input
${click_entrar}         xpath=//div[@id='root']/main/section/article[2]/div/form/button/div
${click_vaga}           xpath=//div[@id='vacancyDescription']/div/div[2]/div/div/div/a/div
${click_cv}             xpath=//div[@id='vacancyDescription']/div/div/div[4]/div/button/div
${check_confirmar}      xpath=//button[2]/div


*** Test Cases ***
Logando
 
    
    click Element                   ${click_login}  
    sleep                           8
    Click Element                   ${click_email}
    Input Text                      ${click_email}          email@mailinator.com
    sleep                           4 
    Click Element                   ${click_senha}      
    Input Text                      ${click_senha}           123456abc
    sleep                           4 
    Click Element                   ${click_entrar}
    sleep                           8 
    Click Element                   ${click_vaga}   
    sleep                           4 
    Click Element                   ${click_cv}       
    sleep                           4 
    Click Element                   ${check_confirmar} 
    sleep                           5  

    