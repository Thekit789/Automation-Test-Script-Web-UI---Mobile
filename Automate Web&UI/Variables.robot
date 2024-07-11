*** Settings ***
Library    SeleniumLibrary


*** Variables ***

# Page Search

${Url}                            https://automate-test.stpb-digital.com/login/
${Url_AddUser}                    https://automate-test.stpb-digital.com/user/form/
${Browser}                        chrome
${locator_Email}                  id=email
${locator_Password}               name=password
${locator_Login}                  id=btn-login
${locator_IconUser}               Xpath=//*[@id="__next"]/div[1]/div[2]/header/div/div/div[2]/span/div/img   
${locator_Logout}                 Xpath=/html/body/div[3]/div[3]/ul/li             
${locator_Notifications}          Xpath=//*[@id="__next"]/div[1]/div[2]/header/div/div/div[2]/button
${locator_ReadNotifications}      Xpath=/html/body/div[3]/div[3]/ul/li[2]/button
${locator_Select-Role}            id=select-role
${locator_Role-Admin}             id=option-select-role-1 
${locator_Role-Author}            id=option-select-role-2 
${locator_Role-Editor}            id=option-select-role-3 
${locator_Role-Maintainer}        id=option-select-role-4 
${locator_Role-Subscriber}        id=option-select-role-5     
${locator_Select-Plan}            id=select-plan
${locator_Plan-Basic}             id=option-select-plan-1  
${locator_Plan-Company}           id=option-select-plan-2 
${locator_Plan-Enterprise}        id=option-select-plan-3 
${locator_Plan-Team}              id=option-select-plan-4 
${locator_Select-Status}          id=select-status
${locator_Status-Panding}         id=option-select-status-1 
${locator_Status-Active}          id=option-select-status-2 
${locator_Status-Inactive}        id=option-select-status-3 
${locator_Clear}                  id=btn-clear
${locator_Search}                 id=btn-search
${locator_Add-User}               Xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[1]/div/a
${locator_Search_Success}         id=:r2r:
${locator_Search_Fail}            Xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[3]/div/div
${locator_verify_Role}           Xpath=//*[@id="option-select-role-1"]
${locator_verify_Plan}           Xpath=//*[@id="option-select-plan-2"]
${locator_Row-per-page}          Xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[3]/div/div[2]/div/div[2]
${locator_Row-per-page-25}       Xpath=//*[@id="menu-"]/div[3]/ul/li[2]
${locator_Next_page}             Xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[3]/div/div[2]/div/div[3]/button[2]


# Page Add User

${locator_Back}                           Xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[1]/button
${locator_Reset}                          Xpath=/html/body/div/div[1]/div[2]/main/div/div[3]/div/div/div/div[2]/a
${locator_Firsname}                       id=firstname
${locator_Lastname}                       id=lastname
${locator_Email_Regis}                    id=email
${locator_Password_regis}                 id=password
${locator_MobilePhone}                    id=mobile-phone          
${locator_Gender}                         validation-basic-radio
${locator_Check_SQL}                      name=courses.SQL   
${locator_Check_Manual}                   name=courses.Test Manual
${locator_Check_Automate}                 name=courses.Automate Test
${locator_Check_Automate2}                name=courses.Automate Test2
${locator_select_Nation}                  id=nationality
${locator_select_Nation_list}             css=#menu- > div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation1.MuiMenu-paper.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation8.MuiPopover-paper.css-1u9pw9f > ul > li:nth-child(221)       
${locator_select_Role}                    id=select-role
${locator_select_Role_list}               Xpath=//*[@id="menu-"]/div[3]/ul/li[1]
${locator_select_Plan}                    id=select-plan
${locator_select_Plan_list}               Xpath=//*[@id="menu-"]/div[3]/ul/li[2]
${locator_SIGNUP}                         Xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[3]/div/div/div/form/button
${locator_Msg_RegisSuccess}               Xpath=/html/body/div[2]/div[3]/div/div[2]/p
${locator_OK!}                            id=btn-ok

# Error Msg

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










