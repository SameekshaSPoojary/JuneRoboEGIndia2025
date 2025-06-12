*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}      Firefox
${url}      https://demoqa.com/upload-download
${path}     C://Users//sampo//Downloads//sampleFile.jpeg
*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Click Element    xpath://a[@id='downloadButton']
        Sleep    2s
        Choose File    xpath://a[@id='downloadButton']    ${path}
        Sleep    2s
        Close Browser

