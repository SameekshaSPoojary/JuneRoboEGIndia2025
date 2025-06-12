*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://www.saucedemo.com/

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://input[@id='user-name']     timeout=5
        Input Text    xpath://input[@id='user-name']    standard_user
        Input Text    xpath://input[@id='password']    secret_sauce
        Click Element    xpath://input[@id='login-button']
        Element Should Be Visible    xpath://div[@class='app_logo']     timeout=5
        Element Should Be Visible    xpath://span[@class='title']      timeout=5
        Close Browser