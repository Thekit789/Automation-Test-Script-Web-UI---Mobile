*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/Variables.robot
Resource    ${CURDIR}/Keyword.robot
Suite Setup    Set Selenium Speed    0.3
Suite Teardown    Close All Browsers
Test Setup    Open Web Browser
Test Teardown    Close Browser 
*** Test Cases ***

TC01 Logout 
    [Documentation]    ใช้สำหรับทดสอบการ Log out ออกจากระบบ 
    [Tags]    Test Pass
    Logout Page


TC02 Read All Notifications
    [Documentation]    ใช้สำหรับทดสอบการกดอ่านข้อความแจ้งเตือน
    [Tags]    Test Pass
    Read All Notifications

TC03 Verify search result Rows per page
    [Documentation]    ใช้สำหรับทดสอบการเลือกจำนวนการแสดงจำนวนผลลัพท์จากการค้นหา
    [Tags]    Test Pass
    Verify search result Rows per page

TC03 Select Filters Search    
    [Documentation]    ใช้สำหรับทดสอบกรณี Select Search Filters
    [Tags]    Test Pass
    [Template]    Select Filters Search
    0    0    0    Halsey Redmore  
    1    0    0    Adeline Micco
    0    1    0    Brockie Myles
    0    0    1    Franz Scotfurth
    2    2    0    Florenza Desporte
    0    2    1    Stephen MacGilfoyle
    3    3    0    Galen Slixby
    5    0    2    Ophelie Fibbens
    4    4    3    Cyrill Risby
    3    3    0    Germain Jacombs
    1    4    3    0–0 of 0 


TC04 Reset Input Data
    [Documentation]    ใช้สำหรับทดสอบการเครียร์ข้อมูล
    [Tags]    Test Fail
    Reset Input Data 


TC05 Add User Data Success 
    [Documentation]    ใช้สำหรับทดสอบกรณีกรอกข้อมูลถูกต้องครบถ้วน Success
    [Tags]    Test Pass
    Input Add User Data Success - Verify Add User


TC07 Verify Case Fail Msg
    [Documentation]    ใช้สำหรับทดสอบกรณีกรอกข้อมูลไม่ครบถ้วนหรือไม่ตรงตาม Format
    [Tags]    Test Fail    
    [Setup]
    [Template]    Input Add User Data Fail Error Msg
    ${EMPTY}    อินขาน    Beam1234@gmail.com    1234567890    08222222222    male    1    1    1    1    ${locator_FName_Error}       This field is required
    กนกนวล    ${EMPTY}    Beam1234@gmail.com    1234567890    08222222222    male   2    1    1    1    ${locator_LName_Error}       This field is required
    กนกนวล    อินขาน    ${EMPTY}    1234567890    08222222222    male                3    1    1    1    ${locator_Email_Error}       This field is required
    กนกนวล    อินขาน    98498654    1234567890    08222222222    male                3    1    1    1    ${locator_Email_Error}       Invalid email address
    กนกนวล    อินขาน    ภาษาไทย    1234567890    08222222222    male                3    1    1    1     ${locator_Email_Error}       Invalid email address 
    กนกนวล    อินขาน    Beam1234@gmail.com    ${EMPTY}    08222222222    male        4    1    1    1    ${locator_Password_Error}    This field is required  
    กนกนวล    อินขาน    Beam1234@gmail.com    1234567890    ${EMPTY}    male         1    1    1    1    ${locator_Phone_Error}       This field is required  
    กนกนวล    อินขาน    Beam1234@gmail.com    1234567890    08222222222    empty     2    1    1    1    ${locator_Gender_Error}      This field is required  
    กนกนวล    อินขาน    Beam1234@gmail.com    1234567890    08222222222    male      0    1    1    1    ${locator_courses_Error}     This field is required  
    กนกนวล    อินขาน    Beam1234@gmail.com    1234567890    08222222222    male      3    0    1    1    ${locator_Nation_Error}      This field is required  
    กนกนวล    อินขาน    Beam1234@gmail.com    1234567890    08222222222    male      4    1    0    1    ${locator_Role_Error}        This field is required  
    กนกนวล    อินขาน    Beam1234@gmail.com    1234567890    08222222222    male      1    1    1    0    ${locator_Plan_Error}        This field is required  
    [Teardown]    Close All Browsers

