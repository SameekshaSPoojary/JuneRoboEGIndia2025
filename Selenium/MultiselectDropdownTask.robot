*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://demoqa.com/select-menu


*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        @{labels}=      Get Selected List Labels    id:cars
        Log To Console    {labels}
        Select From List By Value    id:cars      volvo
        Sleep    2s
        Select From List By Index    id:cars      1
        Sleep    2s
        Select From List By Label    id:cars      Audi
        Sleep    2s
        Close Browser