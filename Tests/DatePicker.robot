*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://www.tutorialspoint.com/selenium/practice/date-picker.php

*** Test Cases ***
Verify login success with valid credentials

        [Documentation]
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create WebDriver    Chrome    options=${chrome options}
        Go To     https://www.tutorialspoint.com/selenium/practice/date-picker.php
        
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
