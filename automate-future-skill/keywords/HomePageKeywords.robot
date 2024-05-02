*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
future skill should display home page and display message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text    ${expected_message}

    
back to register page
    CommonKeywords.Wait until element is ready then click element    xpath=//button[text()="กลับ"]