*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/Variables.robot
Resource    ${CURDIR}/Keyword.robot
Test Setup       Set Selenium Speed    0.25
Test Teardown    Close Browser 

# versions Selenium       4.16.0
# versions chromedriver   126.0.6478.182   

*** Test Cases ***
 
TC-01 Verify Complete Field Data and Dynamic Result score level 3
    [Documentation]    ใช้สำหรับทดสอบกรณีกรอกข้อมูลครบถ้วน Dynamic Result score level 3 และปุ่ม Submit button สามารถคลิกได้ 
    [Tags]             Test Success 
    Open Web Browser
    Field data Contact Details
    Field data Score  
    Close Browser

TC-02 Verify Case Fail Msg
    [Documentation]    ใช้สำหรับทดสอบ Msg แจ้งเตือน กรณีกรอกข้อมูลไม่ครบถ้วนหรือไม่ตรงตาม Format
    [Tags]             Test Fail    
    [Template]         Verify Fail Error Msg 
    0     012345678    Test@Email.com    Test@Email.com    999/99      1    1    1    1    ${locator_Phone_Error}               String must contain at least 1 character(s)
    1     ${EMPTY}     Test@Email.com    Test@Email.com    999/99      1    1    1    1    ${locator_Phone_Error}               String must contain at least 1 character(s)
    1     01234        Test@Email.com    Test@Email.com    999/99      1    1    1    1    ${locator_Phone_Error}               String must contain at least 1 character(s)
    1     012345678    ${EMPTY}          Test@Email.com    999/99      1    1    1    1    ${locator_Email_Error}               Please provide your e-mail
    1     012345678    Test@Email.com    ${EMPTY}          999/99      1    1    1    1    ${locator_Confirm_Email_Error}       Please confirm your e-mail
    1     012345678    Test@Email.com    Test1@Email.com   999/99      1    1    1    1    ${locator_Confirm_Email_Error}       The Confirm Your E-mail must match.
    1     012345678    Test@Email.com    Test@Email.com    ${EMPTY}    1    1    1    1    ${locator_StreesAdress-Error}        The Street Address field is required.
    1     012345678    Test@Email.com    Test@Email.com    999/99      0    0    0    0    ${locator_Province-Error}            The Province field is required.
    1     012345678    Test@Email.com    Test@Email.com    999/99      0    0    0    0    ${locator_District-Error}            The District field is required.
    1     012345678    Test@Email.com    Test@Email.com    999/99      0    0    0    0    ${locator_SubDistrict-Error}         The Sub-district field is required.
    1     012345678    Test@Email.com    Test@Email.com    999/99      0    0    0    0    ${locator_ZipCode_Error}             The Postal / Zip Code field is required.
    
TC-03 Verify submit button able to click on dynamic result level 3
    [Documentation]    ใช้สำหรับทดสอบการอนุญาตคลิก Submit Button เมื่อผลรวม Dynamic result เท่ากับ level 3
    [Tags]             Test Success        
    [Template]         Verify submit button able to click on dynamic result level 3    
    1    3    3
    2    2    3
    2    3    2
    2    3    3
    3    1    3
    3    2    2
    3    2    3
    3    3    1
    3    3    2
    3    3    3

TC-04 Verify submit button not able to click when dynamic result is less level 3
    [Documentation]    ใช้สำหรับทดสอบการไม่อนุญาตคลิก Submit Button เมื่อผลรวม Dynamic result ต่ำกว่า level 3
    [Tags]             Test Fial        
    [Template]         Verify submit button not able to click when dynamic result is less level 3   
    0    0    0
    0    3    3
    0    0    3
    1    0    3
    3    3    0
    1    1    1
    2    2    2
    3    1    1
    3    2    1
