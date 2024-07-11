*** Settings ***
Library    AppiumLibrary
Resource    ${CURDIR}/Mobile_Variables.robot
Resource    ${CURDIR}/Mobile_Keyword.robot    


# adb shell dumpsys window | find "mCurrentFocus"


*** Test Cases ***

# TC01 Test Air Plane Mode
#     [Documentation]    ใช้สำหรับทดสอบการเปิด AirPlane Mode
#     [Tags]    Test Success
#     App Start
#     Search Network & Select
#     Select Airplane Mode
#     Back to Sitting Screen

# TC02 Test On-Off Percent Battery    
#     [Documentation]    ใช้สำหรับทดสอบการเปิด-ปิด โหมด Percent Battery
#     [Tags]    Test Success
#     App Start
#     Select On-Off Percent Battery

TC03 Test Add & Remove Languages
    [Documentation]    ใช้สำหรับทดสอบการ Add & Remove Languages
    [Tags]    Test Success
    App Start
    System Languages Select & Remove

    