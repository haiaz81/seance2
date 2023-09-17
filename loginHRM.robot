*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}=    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}=    edge
${username}=    Admin
${password}=    admin123
*** Test Cases ***
tc01 login test 
    Open Browser    ${url}    ${browser}    
    Maximize Browser Window
    Sleep    2
    Input Text    name:username    ${username}
    Input Password    name:password    ${password}
    Click Button    class:oxd-button
    Sleep    2
    Element Text Should Be    xpath://*[@id="app"]/div[1]/div[1]/header/div[1]/div[1]/span/h6    Dashboard
    Click Element    xpath://p[@class="oxd-userdropdown-name"]
    Sleep    3
    Click Element    Link:Logout
    Sleep    3
    Element Should Be Visible    class:oxd-button
    close browser
*** Keywords ***


