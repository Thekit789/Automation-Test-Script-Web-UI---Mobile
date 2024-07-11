*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/Variables.robot     


*** Keywords ***

Open Web Browser
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
    Input Text                           ${locator_Email}        user.test@krupbeam.com
    Input Text                           ${locator_Password}     123456789           
    Click Element                        ${locator_Login}

Logout Page
    Click Element                        ${locator_IconUser}
    Wait Until Element Is Visible        ${locator_Logout}    5
    Click Element                        ${locator_Logout}
    Wait Until Element Is Visible        ${locator_Login}     5

Read All Notifications
    Wait Until Element Is Visible        ${locator_Notifications}        5
    Click Element                        ${locator_Notifications}
    Wait Until Element Is Visible        ${locator_ReadNotifications}    5
    Click Element                        ${locator_ReadNotifications}
    Wait Until Element Is Not Visible    ${locator_ReadNotifications}    5

Verify search result Rows per page
    Wait Until Element Is Visible        ${locator_Search}
    Click Element                        ${locator_Search}
    Execute JavaScript                   window.scrollTo(1,100)
    Wait Until Element Is Visible        ${locator_Row-per-page}
    Click Element                        ${locator_Row-per-page}
    Wait Until Element Is Visible        ${locator_Row-per-page-25}
    Click Element                        ${locator_Row-per-page-25}
    Execute JavaScript                   window.scrollTo(1,700)
    Wait Until Element Is Visible        ${locator_Next_page}
    Click Element                        ${locator_Next_page}
    Wait Until Page Contains             Hugh Hasson    5    

Select Filters Search
    [Arguments]    ${Select-Role}    ${Select-Plan}    ${Select-Status}    ${Result}
    IF  ${Select-Role} == 1
        Wait Until Element Is Visible    ${locator_Select-Role}
        Click Element                    ${locator_Select-Role}
        Wait Until Element Is Visible    ${locator_Role-Admin}
        Click Element                    ${locator_Role-Admin}   
    ELSE IF    ${Select-Role} == 2
        Wait Until Element Is Visible    ${locator_Select-Role}
        Click Element                    ${locator_Select-Role}
        Wait Until Element Is Visible    ${locator_Role-Author}
        Click Element                    ${locator_Role-Author}
    ELSE IF    ${Select-Role} == 3
        Wait Until Element Is Visible    ${locator_Select-Role}
        Click Element                    ${locator_Select-Role}
        Wait Until Element Is Visible    ${locator_Role-Editor}
        Click Element                    ${locator_Role-Editor}
    ELSE IF    ${Select-Role} == 4
        Wait Until Element Is Visible    ${locator_Select-Role}
        Click Element                    ${locator_Select-Role}
        Wait Until Element Is Visible    ${locator_Role-Maintainer}
        Click Element                    ${locator_Role-Maintainer}
    ELSE IF    ${Select-Role} == 5
        Wait Until Element Is Visible    ${locator_Select-Role}
        Click Element                    ${locator_Select-Role}
        Wait Until Element Is Visible    ${locator_Role-Subscriber}
        Click Element                   ${locator_Role-Subscriber}    
    END

    IF  ${Select-Plan} == 1
        Wait Until Element Is Visible    ${locator_Select-Plan}
        Click Element                    ${locator_Select-Plan}
        Wait Until Element Is Visible    ${locator_Plan-Basic}
        Click Element                    ${locator_Plan-Basic}    
    ELSE IF    ${Select-Plan} == 2
        Wait Until Element Is Visible    ${locator_Select-Plan}
        Click Element                    ${locator_Select-Plan}
        Wait Until Element Is Visible    ${locator_Plan-Company}
        Click Element                    ${locator_Plan-Company}
    ELSE IF    ${Select-Plan} == 3
        Wait Until Element Is Visible    ${locator_Select-Plan}
        Click Element                    ${locator_Select-Plan}
        Wait Until Element Is Visible    ${locator_Plan-Enterprise}
        Click Element                    ${locator_Plan-Enterprise}  
    ELSE IF    ${Select-Plan} == 4
        Wait Until Element Is Visible    ${locator_Select-Plan}
        Click Element                    ${locator_Select-Plan}
        Wait Until Element Is Visible    ${locator_Plan-Team}
        Click Element                    ${locator_Plan-Team}
    END          
            
    IF    ${Select-Status} == 1
        Wait Until Element Is Visible    ${locator_Select-Status}
        Click Element                    ${locator_Select-Status}
        Wait Until Element Is Visible    ${locator_Status-Panding}
        Click Element                    ${locator_Status-Panding}  
    ELSE IF    ${Select-Status} == 2
        Wait Until Element Is Visible    ${locator_Select-Status}
        Click Element                    ${locator_Select-Status}
        Wait Until Element Is Visible    ${locator_Status-Active}
        Click Element                    ${locator_Status-Active}
    ELSE IF    ${Select-Status} == 3
        Wait Until Element Is Visible    ${locator_Select-Status}
        Click Element                    ${locator_Select-Status}
        Wait Until Element Is Visible    ${locator_Status-Inactive}
        Click Element                    ${locator_Status-Inactive}
    END    
   
    Click Element                    ${locator_Search}
    Wait Until Page Contains         ${Result}   5
    Click Element                    ${locator_Clear}

    
Add User
    Wait Until Element Is Visible    ${locator_Add-User}    5
    Click Element                    ${locator_Add-User} 

Select National
    Click Element                    ${locator_select_Nation}
    Wait Until Element Is Visible    ${locator_select_Nation_list}    5  
    Click Element                    ${locator_select_Nation_list}

Select Role
    Click Element                    ${locator_select_Role}
    Wait Until Element Is Visible    ${locator_select_Role_list}    5
    Click Element                    ${locator_select_Role_list}    

Select Plan
    Click Element                    ${locator_select_Plan}
    Wait Until Element Is Visible    ${locator_select_Plan_list}    5
    Click Element                    ${locator_select_Plan_list}       

Verify Error msg
    [Arguments]    ${locatorMsg}    ${ErrorMsg}=${EMPTY}
    ${text}=    Get Text    ${locatorMsg}
    Should Be Equal As Strings    ${text}    ${ErrorMsg}

Reset Input Data
    Wait Until Element Is Visible    ${locator_Add-User}
    Click Element                    ${locator_Add-User}
    Wait Until Page Contains    Kru P' Beam    5  
    Input Text                       ${locator_Firsname}             กนกนวล
    Input Text                       ${locator_Lastname}             อินขาน
    Input Text                       ${locator_Email_Regis}          Beam1234@gmail.com
    Input Text                       ${locator_Password_regis}       1234567890
    Input Text                       ${locator_MobilePhone}          08222222222  
    Select Radio Button              ${locator_Gender}               male    
    Select Checkbox                  ${locator_Check_Automate}
    Click Element                    ${locator_select_Nation}
    Wait Until Element Is Visible    ${locator_select_Nation_list}    5  
    Click Element                    ${locator_select_Nation_list}
    Click Element                    ${locator_select_Role}
    Wait Until Element Is Visible    ${locator_select_Role_list}      5
    Click Element                    ${locator_select_Role_list}
    Click Element                    ${locator_select_Plan}
    Wait Until Element Is Visible    ${locator_select_Plan_list}
    Click Element                    ${locator_select_Plan_list}
    Execute Javascript    window.scrollTo(document.body.scrollHeight,0)
    Click Element                    ${locator_Reset}


Input Add User Data Success - Verify Add User
    Wait Until Element Is Visible    ${locator_Add-User}
    Click Element    ${locator_Add-User}
    Wait Until Page Contains    Kru P' Beam    5  
    Input Text                       ${locator_Firsname}             Kittisak
    Input Text                       ${locator_Lastname}             Saengsri
    Input Text                       ${locator_Email_Regis}          Kittisak@gmail.com
    Input Text                       ${locator_Password_regis}       1234567890
    Input Text                       ${locator_MobilePhone}          08222222222  
    Select Radio Button              ${locator_Gender}               male    
    Select Checkbox                  ${locator_Check_Automate}
    Click Element                    ${locator_select_Nation}
    Wait Until Element Is Visible    ${locator_select_Nation_list}    5  
    Click Element                    ${locator_select_Nation_list}
    Click Element                    ${locator_select_Role}
    Wait Until Element Is Visible    ${locator_select_Role_list}      5
    Click Element                    ${locator_select_Role_list}
    Click Element                    ${locator_select_Plan}
    Wait Until Element Is Visible    ${locator_select_Plan_list}
    Click Element                    ${locator_select_Plan_list}
    Click Element                    ${locator_SIGNUP}
    Wait Until Element Is Visible    ${locator_Msg_RegisSuccess}      5
    ${Text}    Get Text              ${locator_Msg_RegisSuccess}
    Should Be Equal As Strings       ${text}    Register Success
    Wait Until Element Is Visible    ${locator_OK!}    5
    Click Element                    ${locator_OK!}
    Wait Until Page Contains    Search Filters    5    
    Wait Until Element Is Visible    ${locator_Select-Role}
    Click Element                    ${locator_Select-Role}    
    Wait Until Element Is Visible    ${locator_verify_Role}    
    Click Element                    ${locator_verify_Role}
    Wait Until Element Is Visible    ${locator_Select-Plan}
    Click Element                    ${locator_Select-Plan}
    Wait Until Element Is Visible    ${locator_verify_Plan}
    Click Element                    ${locator_verify_Plan}
    Click Element                    ${locator_Search}
    Wait Until Page Contains    Kittisak Saengsri    5


Input Add User Data Fail Error Msg
    Open Browser    ${Url_AddUser}    gc
    Maximize Browser Window
    Input Text        ${locator_Email}        user.test@krupbeam.com
    Input Text        ${locator_Password}     123456789           
    Click Element     ${locator_Login}
    [Arguments]    ${Fname}    ${Lname}    ${Email}    ${Password}    ${Phone}    ${Gender}    ${Courses}    ${Nationnal}    ${Role}    ${Plan}    ${locatorMsg}    ${MsgError}
    Wait Until Element Is Visible            ${locator_Firsname}
    Input Text    ${locator_Firsname}        ${Fname}
    Wait Until Element Is Visible            ${locator_Lastname}       
    Input Text    ${locator_Lastname}        ${Lname}
    Wait Until Element Is Visible            ${locator_Email_Regis}
    Input Text    ${locator_Email_Regis}     ${Email}
    Wait Until Element Is Visible            ${locator_Password_regis}
    Input Text    ${locator_Password_regis}  ${Password}
    Wait Until Element Is Visible            ${locator_MobilePhone}
    Input Text    ${locator_MobilePhone}     ${Phone}

    IF  "${Gender}" != "empty"
        Select Radio Button    ${locator_Gender}    ${Gender}
    END
       
    IF       ${Courses} == 1
        Select Checkbox    ${locator_Check_SQL}    
    ELSE IF  ${Courses} == 2
        Select Checkbox    ${locator_Check_Manual}     
    ELSE IF  ${Courses} == 3
        Select Checkbox    ${locator_Check_Automate}     
    ELSE IF  ${Courses} == 4
        Select Checkbox    ${locator_Check_Automate2}        
    END

    IF       ${Nationnal} == 1
        Select National        
    END
    
    IF       ${Role} == 1
        Select Role   
    END
    
    IF       ${Plan} == 1
        Select Plan        
    END
    
    Click Element        ${locator_SIGNUP}
    Verify Error msg     ${locatorMsg}    ${MsgError}
    Close Browser



   
