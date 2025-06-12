*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Edge
${url}      https://www.amazon.in

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Mouse Over    xpath://span[normalize-space()='Prime']
        Sleep    2s
        Click Element    xpath://img[@id='multiasins-img-link']
        Sleep    2s
        Element Should Be Visible    xpath://a[@id='nav-logo-sprites']
        Sleep    2s
        Close Browser