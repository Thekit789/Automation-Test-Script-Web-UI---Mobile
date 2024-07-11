*** Settings ***
Library    SeleniumLibrary


*** Variables ***

${Url}                                    https://automate-test.stpb-digital.com/register/
${Browser}                                chrome
${locator_Reset}                          id=reset  
${locator_Firsname}                       id=firstname
${locator_Lastname}                       id=lastname
${locator_Email}                          id=email
${locator_Password}                       id=password
${locator_MobilePhone}                    id=mobile-phone          
${locator_Gender}                         validation-basic-radio
${locator_Check_SQL}                      name=courses.SQL   
${locator_Check_Manual}                   name=courses.Test Manual
${locator_Check_Automate}                 name=courses.Automate Test
${locator_Check_Automate2}                name=courses.Automate Test2
${locator_select_Nation}                  id=nationality
${locator_select_Nation_list}             css=#menu- > div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation1.MuiMenu-paper.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation8.MuiPopover-paper.css-1u9pw9f > ul > li:nth-child(221)       
${locator_select_Role}                    id=select-role
${locator_select_Role_list}               css=#menu- > div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation1.MuiMenu-paper.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation8.MuiPopover-paper.css-1u9pw9f > ul > li:nth-child(1)
${locator_select_Plan}                    id=select-plan
${locator_select_Plan_list}               Xpath=//*[@id="menu-"]/div[3]/ul/li[1]     
${locator_SIGNUP}                         id=btn-sign-up
${locator_Hyperlink_Signin}               Xpath=//*[@id="__next"]/div[1]/div/div/div/div/div/div/form/div[11]/p[2]/a
${locator_Msg_RegisSuccess}               Xpath=/html/body/div[2]/div[3]/div/div[2]/p
${locator_OK!}                            id=btn-ok
${locator_Login_Botton}                   id=btn-login
${locator_FName_Error}                    id=error-firstname
${locator_LName_Error}                    id=error-lastname
${locator_Email_Error}                    id=error-email
${locator_Password_Error}                 id=error-password
${locator_Phone_Error}                    id=error-mobile-phone
${locator_Gender_Error}                   id=validation-basic-gender
${locator_courses_Error}                  id=validation-basic-courses
${locator_Nation_Error}                   id=validation-basic-nationality
${locator_Role_Error}                     id=validation-role
${locator_Plan_Error}                     id=validation-plan



*** Keywords ***

Open Web Browser
    Set Selenium Speed    0.3
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window

Register Success
    Wait Until Page Contains    Kru P' Beam    5  
    Input Text           ${locator_Firsname}         กนกนวล
    Input Text           ${locator_Lastname}         อินขาน
    Input Text           ${locator_Email}            Beam1234@gmail.com
    Input Text           ${locator_Password}         1234567890
    Input Text           ${locator_MobilePhone}      08222222222  
    Select Radio Button  ${locator_Gender}    male    
    Select Checkbox      ${locator_Check_Automate}
    Click Element        ${locator_select_Nation}
    Wait Until Element Is Visible    ${locator_select_Nation_list}    5  
    Click Element        ${locator_select_Nation_list}
    Click Element          ${locator_select_Role}
    Wait Until Element Is Visible    ${locator_select_Role_list}    5
    Click Element        ${locator_select_Role_list}
    Click Element        ${locator_select_Plan}
    Wait Until Element Is Visible    ${locator_select_Plan_list}
    Click Element        ${locator_select_Plan_list}
    Click Element        ${locator_SIGNUP}
    Wait Until Element Is Visible    ${locator_Msg_RegisSuccess}    5
    ${Text}    Get Text    ${locator_Msg_RegisSuccess}
    Should Be Equal As Strings    ${text}    Register Success
    Wait Until Element Is Visible    ${locator_OK!}    5
    Click Element        ${locator_OK!}
    Wait Until Element Is Visible    ${locator_Login_Botton}    5

Botton Reset Data
    Wait Until Page Contains    Kru P' Beam    5  
    Input Text        ${locator_Firsname}         Kanoknual
    Input Text        ${locator_Lastname}         Inkan
    Input Text        ${locator_Email}            Beam1234@gmail.com
    Input Text        ${locator_Password}         1234567890
    Input Text        ${locator_MobilePhone}      08222222222  
    Select Radio Button    ${locator_Gender}      female    
    Select Checkbox    ${locator_Check_SQL}
    Click Element     ${locator_select_Nation}
    Wait Until Element Is Visible    ${locator_select_Nation_list}    5  
    Click Element     ${locator_select_Nation_list}
    Click Element     ${locator_select_Role}
    Wait Until Element Is Visible    ${locator_select_Role_list}    5
    Click Element     ${locator_select_Role_list}
    Click Element     ${locator_select_Plan}
    Wait Until Element Is Visible    ${locator_select_Plan_list}
    Click Element     ${locator_select_Plan_list} 
    Click Element     ${locator_Reset}   
    
Field Firstname Empty
    Wait Until Page Contains    Kru P' Beam    5
    Input Text        ${locator_Firsname}         ${EMPTY}
    Click Element     ${locator_SIGNUP}
     Wait Until Element Is Visible    ${locator_FName_Error}    5
    ${text}    Get Text    ${locator_FName_Error}
    Should Be Equal As Strings    ${text}    This field is required

Field Lastname Empty
    Wait Until Page Contains    Kru P' Beam    5
    Input Text        ${locator_Lastname}         ${EMPTY}  
    Click Element     ${locator_SIGNUP}
    Wait Until Element Is Visible    ${locator_LName_Error}    5
    ${Text}    Get Text    ${locator_LName_Error}
    Should Be Equal As Strings    ${text}    This field is required

Field Email Empty
    Wait Until Page Contains    Kru P' Beam    5
    Input Text        ${locator_Email}         ${EMPTY}
    Click Element     ${locator_SIGNUP}
    Wait Until Element Is Visible    ${locator_Email_Error}    5
    ${Text}    Get Text    ${locator_Email_Error}
    Should Be Equal As Strings    ${text}    This field is required    

Field Email Fail
    Wait Until Page Contains    Kru P' Beam    5
    Input Text        ${locator_Email}         Beam1234gmail.com
    Click Element     ${locator_SIGNUP}
    Wait Until Element Is Visible    ${locator_Email_Error}    5
    ${Text}    Get Text    ${locator_Email_Error}
    Should Be Equal As Strings    ${text}    Invalid email address
    Reload Page
    Wait Until Page Contains    Kru P' Beam    5
    Input Text        ${locator_Email}         ไทย
    Click Element     ${locator_SIGNUP}
    Wait Until Element Is Visible    ${locator_Email_Error}    5
    ${Text}    Get Text    ${locator_Email_Error}
    Should Be Equal As Strings    ${text}    Invalid email address
    Reload Page
    Wait Until Page Contains    Kru P' Beam    5
    Input Text        ${locator_Email}         09912345678
    Click Element     ${locator_SIGNUP}
    Wait Until Element Is Visible    ${locator_Email_Error}    5
    ${Text}    Get Text    ${locator_Email_Error}
    Should Be Equal As Strings    ${text}    Invalid email address

Field Password Empty
    Wait Until Page Contains    Kru P' Beam    5
    Input Text        ${locator_Password}         ${EMPTY}
    Click Element     ${locator_SIGNUP}
    Wait Until Element Is Visible    ${locator_Password_Error}    5
    ${Text}    Get Text    ${locator_Password_Error}
    Should Be Equal As Strings    ${text}    This field is required      

Field Mobile-Phone Empty
    Wait Until Page Contains    Kru P' Beam    5
    Input Text        ${locator_MobilePhone}         ${EMPTY}
    Click Element     ${locator_SIGNUP}
    Wait Until Element Is Visible    ${locator_Phone_Error}    5
    ${Text}    Get Text    ${locator_Phone_Error}
    Should Be Equal As Strings    ${text}    This field is required

Field Select More Courses
    Wait Until Page Contains    Kru P' Beam    5
    Select Checkbox    ${locator_Check_SQL}
    Select Checkbox    ${locator_Check_Manual}
    Select Checkbox    ${locator_Check_Automate}
    Select Checkbox    ${locator_Check_Automate2}

Field Empty Gender - Courses - Nation - Role - Plan
    Wait Until Page Contains    Kru P' Beam    5    
    Click Element       ${locator_SIGNUP}
    Wait Until Element Is Visible    ${locator_Gender_Error}    5
    ${Text}    Get Text    ${locator_Gender_Error}
    Should Be Equal As Strings    ${text}    This field is required 
    Reload Page
    Click Element       ${locator_SIGNUP}   
    Wait Until Element Is Visible    ${locator_courses_Error}    5
    ${Text}    Get Text    ${locator_courses_Error}
    Should Be Equal As Strings    ${text}    This field is required
    Reload Page
    Click Element       ${locator_SIGNUP}  
    Wait Until Element Is Visible    ${locator_Nation_Error}    5
    ${Text}    Get Text    ${locator_Nation_Error}
    Should Be Equal As Strings    ${text}    This field is required
    Click Element       ${locator_SIGNUP}
    Wait Until Element Is Visible    ${locator_Role_Error}    5
    ${Text}    Get Text    ${locator_Role_Error}
    Should Be Equal As Strings    ${text}    This field is required
    Reload Page
    Click Element       ${locator_SIGNUP}
    Wait Until Element Is Visible    ${locator_Plan_Error}    5
    ${Text}    Get Text    ${locator_Plan_Error}
    Should Be Equal As Strings    ${text}    This field is required


*** Test Cases ***

# TC01 Test Register success
#     Open Web Browser
#     Register Success
#     Close Browser

# TC02 Test Reset Data
#     Open Web Browser
#     Botton Reset Data
#     Close Browser

# TC03 Test Field Firstname Empty
#     Open Web Browser
#     Field Firstname Empty
#     Close Browser

# TC04 Test Field Lastname Empty
#     Open Web Browser
#     Field Lastname Empty
#     Close Browser

# TC05 Test Field Email Empty
#     Open Web Browser
#     Field Email Empty
#     Close Browser

# TC06 Test Field Password Empty
#     Open Web Browser
#     Field Password Empty  
#     Close Browser    

# TC07 Test Field Mobile-Phone Empty
#     Open Web Browser
#     Field Mobile-Phone Empty
#     Close Browser

#  TC08 Test Field Mobile-Phone Empty
#     Open Web Browser
#     Field Email Fail
#     Close Browser

# TC09 Test Check Box 
#      Open Web Browser
#      Field Select More Courses
#      Close Browser

# TC10 Test Field Empty Gender - Courses - Nation - Role - Plan
#     Open Web Browser
#     Field Empty Gender - Courses - Nation - Role - Plan
#     Close Browser

TC11 Field Email Fail
     Open Web Browser
     Field Email Fail
     Close Browser










