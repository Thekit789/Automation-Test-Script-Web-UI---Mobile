*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${Url}                            https://automate-test.stpb-digital.com/
${Browser}                        chrome
${locator_Email}                  id=email
${locator_Password}               name=password
${locator_Login}                  id=btn-login
${locator_Showpass}               css=#__next > div.layout-wrapper.MuiBox-root.css-33gw4 > div > div > div.MuiBox-root.css-15tnlg1 > div > div > form > div.MuiFormControl-root.MuiFormControl-fullWidth.css-tzsjye > div > div > button > svg    
${locator_MassaegEmail}           css=#__next > div.layout-wrapper.MuiBox-root.css-33gw4 > div > div > div.MuiBox-root.css-15tnlg1 > div > div > form > div.MuiFormControl-root.MuiFormControl-fullWidth.css-m5bgtg > p        
${locator_MassaegPass}            css=#__next > div.layout-wrapper.MuiBox-root.css-33gw4 > div > div > div.MuiBox-root.css-15tnlg1 > div > div > form > div.MuiFormControl-root.MuiFormControl-fullWidth.css-tzsjye > p
${locator_Createaccount}          css=#__next > div.layout-wrapper.MuiBox-root.css-33gw4 > div > div > div.MuiBox-root.css-15tnlg1 > div > div > form > div.MuiBox-root.css-z0xj7h > p.MuiTypography-root.MuiTypography-body1.css-azsy9a > a
${locator_SIGNUP}                 id=btn-sign-up 

*** Keywords ***

Open Web Browser
    Set Selenium Speed    0.5
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
  
################     Test Case ID 3    ################
Input Data Field Email
    Input Text    ${locator_Email}    admin_123.test@gmail.com 

################     Test Case ID 4    ################
Input Data Field Email Fail 1
    Input Text    ${locator_Email}    Beam1234gmail.com 
    Input Text    ${locator_Password}    123456789
    Click Element    ${locator_Login}
Input Data Field Email Fail 2
    Input Text    ${locator_Email}    ไทย
    Input Text    ${locator_Password}    123456789
    Click Element    ${locator_Login}
Input Data Field Email Fail 3
    Input Text    ${locator_Email}    09912345678 
    Input Text    ${locator_Password}    123456789
    Click Element    ${locator_Login}   

################     Test Case ID 5    ################
Input Data Field Password Over 5 Number
    Input Text    ${locator_Email}    user.test@krupbeam.com
    Click Element    ${locator_Showpass}  
    Input Text    ${locator_Password}    1234567890     
    Click Element    ${locator_Login}

################     Test Case ID 6    ################    
Input Data Field Password Under 5 Number
    Input Text    ${locator_Email}    user.test@krupbeam.com
    Click Element    ${locator_Showpass} 
    Input Text    ${locator_Password}    123
    Click Element    ${locator_Login}    
Input Data Field Password Under 5 Character
    Input Text    ${locator_Email}    user.test@krupbeam.com
    Click Element    ${locator_Showpass} 
    Input Text    ${locator_Password}    beam
    Click Element    ${locator_Login}    
    
################     Test Case ID 7    ################
Input Data For Loging Pass
    Input Text    ${locator_Email}    user.test@krupbeam.com   
    Input Text    ${locator_Password}    123456789
    Click Element    ${locator_Login}        

################     Test Case ID 8    ################   
Input Data For Loging Fail
    Input Text    ${locator_Email}    Beam12345678@gmail.com   
    Input Text    ${locator_Password}    12345678900
    Click Element    ${locator_Login}            

################     Test Case ID 9    ################   
Input Required Field Empty
    Input Text    ${locator_Email}    ${EMPTY}   
    Input Text    ${locator_Password}    ${EMPTY}
    Click Element    ${locator_Login}  





*** Test Cases ***

# Test Case ID 2    ตรวจสอบหน้าจอ หน้าจอ Kru P' Beam
TC02-Login-Show-page
    Open Web Browser
    Wait Until Page Contains    Kru P' Beam
    Close Browser    

# Test Case ID 3    ตรวจสอบการกรอกข้อมูล Field Email เป็นภาษาอังกฤษ , ตัวเลข , อักขระพิเศษ _.@
TC03-Field-Email
    Open Web Browser
    Input Data Field Email
    Close Browser

# Test Case ID 4.1    ตรวจสอบการแจ้งเตือน "email must be a valid email" เมื่อกรอกข้อมูล Field Email :Beam1234gmail.com / Field Email :ไทย
TC04-Input-Email-Fail 1
    Open Web Browser
    Input Data Field Email Fail 1
    ${text}=    Get Text    ${locator_MassaegEmail}    
    Should Be Equal As Strings    ${text}    email must be a valid email
    Reload Page
    Input Data Field Email Fail 2
    ${text}=    Get Text    ${locator_MassaegEmail}    
    Should Be Equal As Strings    ${text}    email must be a valid email
    Close Browser 

# Test Case ID 4.3    ตรวจสอบการแจ้งเตือน "email must be a valid email" เมื่อกรอกข้อมูล Field Email :09912345678
TC04-Input-Email-Fail 3
    Open Web Browser
    Input Data Field Email Fail 3
    ${text}=    Get Text    ${locator_MassaegEmail}    
    Should Be Equal As Strings    ${text}    email must be a valid email
    Close Browser     

# Test Case ID 5    ตรวจสอบการกรอกข้อมูล Field Password ที่เป็นตัวเลขมากกว่า 5 หลัก
TC05-Field-Password-Pass
    Open Web Browser
    Input Data Field Password Over 5 Number
    Close Browser

# Test Case ID 6.1    ตรวจสอบการกรอกข้อมูล Field Password ที่เป็นตัวเลขน้อยกว่า 5 หลัก / ที่เป็นตัวอักษรภาษาอังกฤษน้อยกว่า 5 หลัก
TC06-Field-Password-Fail
    Open Web Browser
    Input Data Field Password Under 5 Number
    ${text}=    Get Text    ${locator_MassaegPass}
    Should Be Equal As Strings    ${text}    password must be at least 5 characters    
    Reload Page
    Input Data Field Password Under 5 Character
    ${text}=    Get Text    ${locator_MassaegPass}
    Should Be Equal As Strings    ${text}    password must be at least 5 characters    
    Close Browser

# Test Case ID 7    ตรวจสอบการกรอก Email และ Password โดยเป็นข้อมูลที่ทำการลงทะเบียนไว้
TC07-Login-Pass
   Open Web Browser
    Input Data For Loging Pass
    Close Browser
    
# Test Case ID 8    ตรวจสอบการกรอก Email และ Password ที่ไม่มีการลงทะเบียนไว้ 
TC08-Login-Fail
   Open Web Browser
    Input Data For Loging Fail
    ${text}=    Get Text    ${locator_MassaegEmail}
    Should Be Equal As Strings    ${text}    Email or Password is invalid
    Close Browser

# Test Case ID 9    ตรวจสอบการไม่ได้กรอกข้อมูล Required Field*
TC09-Required-Field-Empty
    Open Web Browser
    Input Required Field Empty
    ${text}=    Get Text    ${locator_MassaegEmail}
    Should Be Equal As Strings    ${text}    email is a required field
    ${text}=    Get Text    ${locator_MassaegPass}
    Should Be Equal As Strings    ${text}    password must be at least 5 characters
    Close Browser

# Test Case ID 10    ตรวจสอบการกด Hyperlink Create an account
TC10-Click-Hyperlink 
    Open Web Browser
    Click Element    ${locator_Createaccount}
    Wait Until Page Contains Element    ${locator_SIGNUP}    
    Close Browser