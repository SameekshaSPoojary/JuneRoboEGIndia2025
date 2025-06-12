*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://rahulshettyacademy.com/AutomationPractice/


*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        #get the common attribute among the radio buttons
        ${elements}=        Get WebElements       xpath://input[@class='radioButton']
        FOR    ${element}    IN    @{elements}
            Click Element    ${element}
            Sleep    2s
        END
        ${elements}=        Get WebElements       xpath://input[@type='checkbox']
        FOR    ${element}    IN    @{elements}
            Click Element    ${element}
            Sleep    2s
        END
        Close Browser