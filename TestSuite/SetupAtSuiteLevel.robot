*** Settings ***
Suite Setup     Open db connection
Suite Teardown      Close db connection
Resource        ../Resources/Resource.robot


*** Test Cases ***
Testcase1
        Log To Console    Execute testcase1


Testcase2
        Log To Console   Execute testcase1


Testcase3
        Log To Console   Execute testcase1

