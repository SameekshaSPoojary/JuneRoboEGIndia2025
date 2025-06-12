*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     Collections

*** Variables ***
${browser}      Edge
${url}      https://omayo.blogspot.com/
${path}     C://Users//sampo//Downloads//sampleFile.jpeg

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        @{labels}=      Get Selected List Labels    id:multiselect1
        Log To Console    {labels}
        Select From List By Value    id:multiselect1      volvox
        Sleep    2s
        Select From List By Index    id:multiselect1      1
        Sleep    2s
        Select From List By Label    id:multiselect1      Audi
        Sleep    2s


        @{labels}=      Get Selected List Labels    id:drop1
        Log To Console    {labels}
        Select From List By Value    id:drop1      def
        Sleep    2s
        Select From List By Index    id:drop1      2
        Sleep    2s
        Select From List By Label    id:drop1     doc 3
        Sleep    2s


        Click Element    xpath://textarea[@id='ta1']
        Sleep    2s
        Input Text    xpath://textarea[@id='ta1']    hello



        Click Element    xpath://textarea[@id='ta1']
        Sleep    2s
        Input Text    xpath://textarea[normalize-space()='The cat was playing in the garden.']      The cat was playing in the garden.
        
        
        Click Link    xpath://a[@id='link1']
        Sleep    2s
        Go Back


        Select Radio Button    gender    male

        Select Checkbox      xpath://input[@id='checkbox2']
        Sleep    2s

        Click Element    xpath://input[@id='prompt']
        Sleep    2s
        Input Text Into Alert    hello
        Sleep       2s

        Click Element    xpath://input[@id='confirm']
        Sleep    2s
        Handle Alert        action=DISMISS
        Sleep    2s


        Scroll Element Into View    xpath://input[@id='uploadfile']
        Choose File    xpath://input[@id='uploadfile']    ${path}
        Sleep    2s
        Close Browser