*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/RegisPageKeywords.robot
Resource        ../keywords/HomePageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome
Suite Teardown     Close Browser


*** Test Cases ***
As I am not a registered user I want to complete registration
    When register to future skill platform with ${usernameemail} and ${firstName} and ${lastName} and ${phoneNumber} and ${password} and ${confirmPassword}
    Then future skill should display home page and display message as "รหัส OTP ที่ได้รับ (โปรดระบุภายในเวลา 1 นาที)"
    [Teardown]    back to register page

