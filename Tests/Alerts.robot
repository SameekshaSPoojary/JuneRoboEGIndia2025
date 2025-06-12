*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/javascript_alerts


*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create WebDriver    Chrome    options=${chrome options}
        Go To     https://the-internet.herokuapp.com/javascript_a        
        Maximize Browser Window        
        Sleep    2s
        Click Element    css:button[onclick='jsAlert()']
        Sleep    2s
        #informational alert with ok button only
        Handle Alert        action=ACCEPT       timeout=3
        Sleep    4s
        #confirmation alerts
        Click Element    css:button[onclick='jsConfirm()']
        Sleep    2s
        Handle Alert        action=DISMISS       timeout=3
        Sleep    2s
        Click Element    css:button[onclick='jsPrompt()']
        Sleep    2s
        Input Text Into Alert    hello
        Sleep       4s
        #Handle Alert        action=ACCEPT       timeout=5
        Close Browser
