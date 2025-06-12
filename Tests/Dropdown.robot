*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://rahulshettyacademy.com/AutomationPractice/


*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create WebDriver    Chrome    options=${chrome options}
        Go To     https://rahulshettyacademy.com/AutomationPractice/
        Maximize Browser Window
        @{labels}=      Get Selected List Labels    id:dropdown-class-example
        Log To Console    {labels}
        Select From List By Value    id:dropdown-class-example      option1
        Sleep    2s
        Select From List By Index    id:dropdown-class-example      2
        Sleep    2s
        Select From List By Label    id:dropdown-class-example      Option3
        Sleep    2s
        Close Browser
