*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://demoqa.com/alerts


*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Sleep    2s
        Click Element    xpath://button[@id='alertButton']
        Sleep    2s

        Handle Alert        action=ACCEPT       timeout=3
        Sleep    4s

        Click Element    xpath://button[@id='timerAlertButton']
        Sleep    2s

        Handle Alert        action=ACCEPT       timeout=6
        Sleep    2s

        Click Element    xpath://button[@id='confirmButton']
        Sleep    2s

        Handle Alert        action=DISMISS       timeout=3
        Sleep    2s


        Click Element    xpath://button[@id='promtButton']
        Sleep    2s

        Input Text Into Alert    hello
        Sleep       4s

        #Handle Alert        action=ACCEPT       timeout=5
        Close Browser