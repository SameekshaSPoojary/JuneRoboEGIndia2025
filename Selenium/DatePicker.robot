*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://www.tutorialspoint.com/selenium/practice/date-picker.php

*** Test Cases ***
Verify login success with valid credentials

        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Press Key    xpath://input[@id='datetimepicker1']    11
        Click Element    xpath://span[@class='flatpickr-day today']
        Sleep    2s

        Press Key    xpath://input[@id='datetimepicker2']    12
        Click Element    xpath://span[@class='flatpickr-day today selected']
        Sleep    3S

        #Press Key    xpath://input[@id='target']    SHIFT
        #Sleep    2s
        Close Browser