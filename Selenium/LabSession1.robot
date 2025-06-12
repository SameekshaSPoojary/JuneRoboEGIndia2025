*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://www.tutorialspoint.com/selenium/practice/register.php

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://input[@id='firstname']     timeout=5
        Input Text    xpath://input[@id='firstname']    Sam
        Input Text    xpath://input[@id='lastname']    po
        Input Text    xpath://input[@id='username']     sammm
        Input Text    xpath://input[@id='password']     sam123
        Click Element    xpath://input[@value='Register']
        Click Element    xpath://a[@type='submit']
        Input Text    xpath://input[@id='email']     sammm
        Input Text    xpath://input[@id='password']     sam123
        Click Element    xpath://input[@value='Login']
        Close Browser