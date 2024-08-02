*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/Variables.robot
Resource    ${CURDIR}/Keyword.robot
Suite Setup    Set Selenium Speed    1
Suite Teardown    Close All Browsers
Test Setup    Open Web Browser
Test Teardown    Close Browser 

*** Test Cases ***

TC-01
    Search Youtube

# TC-02
#     Get data from Excel