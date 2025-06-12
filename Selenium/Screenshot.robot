*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/javascript_alerts


*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Capture Page Screenshot  C://Users//sampo//Downloads//robo1.png
        Sleep    2s
        Capture Element Screenshot    xpath://button[@onclick='jsAlert()']      C://Users//sampo//Downloads//robo.png
        Close Browser