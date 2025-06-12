*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     Collections


*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com//upload
${path}    C://Users//sampo//Downloads//sampleFile.jpeg

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Choose File    xpath://input[@id='file-upload']    ${path}
        Sleep    2s
        Click Element    xpath://input[@id='file-submit']
        Sleep    2s
        Wait Until Element Is Visible    xpath://h3[normalize-space()='File Uploaded!']
        ${text}=        Get Text    h3[normalize-space()='File Uploaded!']
        Log To Console    ${text}
        Close Browser