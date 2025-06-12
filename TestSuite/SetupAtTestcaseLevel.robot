*** Test Cases ***
Login
        Setup
        Log To Console    Execute testcase1
        Log To Console    Logging into the application
        Teardown

AddToCart
        Log To Console    Execute Testcase2
        Log To Console    Adding the product to cart


*** Keywords ***
Setup
        Log To Console    launching the browser

Teardown
        Log To Console    Closing the browser


