*** Settings ***
Library    AppiumLibrary
Resource    ${CURDIR}/Mobile_Variables.robot

*** Keywords ***

App Start
    Open Application    ${RemoteURL}    
    ...                 platformName=${PlatformName}
    ...                 platformVersion=${PlatformVersion}
    ...                 deviceName=${DeviceName}
    ...                 automationName=UiAutomator2
    ...                 newCommandTimeout=2500
    ...                 appPackage=${appPackage}
    ...                 appActivity=${appActivity}

Search Network & Select
    Wait Until Element Is Visible    ${locator_Search}    5
    Click Element    ${locator_Search}
    Wait Until Element Is Visible    ${locator_Field-Search}    5
    Input Text    ${locator_Field-Search}    Network
    Wait Until Element Is Visible    ${locator_Select_Network}    5
    Click Element    ${locator_Select_Network}
    
Select Airplane Mode
    Wait Until Element Is Visible    ${locator_Select_Airplane-mode}    5
    Click Element    ${locator_Select_Airplane-mode}

Back to Sitting Screen
    Wait Until Element Is Visible    ${locator_btn-Back}    5
    Click Element    ${locator_btn-Back}
    Wait Until Element Is Visible    ${locator_btn-Back2Sttting}    5
    Click Element    ${locator_btn-Back2Sttting}
    Wait Until Element Is Visible    ${locator_Sitting}    5
    Close Application

Select On-Off Percent Battery
    Wait Until Element Is Visible    ${locator_Battery}    5
    Click Element    ${locator_Battery}
    Wait Until Element Is Visible    ${locator_Switch-On-Off-Battery}    5
    Click Element    ${locator_Switch-On-Off-Battery}
    Wait Until Element Is Visible    ${locator_Switch-On-Off-Battery}    5
    Click Element    ${locator_Switch-On-Off-Battery}
    Wait Until Element Is Visible    ${locator_btn-Back}    5
    Click Element    ${locator_btn-Back}
    Wait Until Element Is Visible    ${locator_Sitting}    5
    Close Application
    
System Languages Select & Remove
    FOR  ${i}  IN RANGE    2
        Swipe                            500    1900    500    300    2000
    END
    Wait Until Element Is Visible    ${locator_System}    5
    Click Element    ${locator_System}
    Wait Until Element Is Visible    ${locator_Languages-input}    5
    Click Element    ${locator_Languages-input}
    Wait Until Element Is Visible    ${locator_Languages-input}    5
    Click Element    ${locator_Languages-input}
    Wait Until Element Is Visible    ${locator_Menu_Add-Language}    5
    Click Element    ${locator_Menu_Add-Language}
    Wait Until Element Is Visible    ${locator_SearchLanguage}    5
    Click Element    ${locator_SearchLanguage}
    Wait Until Element Is Visible    ${locator_Search-Text}    5
    Input Text    ${locator_Search-Text}    Thai
    Wait Until Element Is Visible    ${locator_Select-Thai}    5
    Click Element    ${locator_Select-Thai}
    Wait Until Element Is Visible    ${locator_Show-Thai-Language}    5
    Wait Until Element Is Visible    ${locator_Menu_Remove}    5
    Click Element    ${locator_Menu_Remove}
    Wait Until Element Is Visible    ${locator_Select-Remove}    5 
    Click Element    ${locator_Select-Remove}
    Wait Until Element Is Visible    ${locator_Check-Thai-Remove}    5
    Click Element    ${locator_Check-Thai-Remove}
    Wait Until Element Is Visible    ${locator_Remove}    5
    Click Element    ${locator_Remove}
    Wait Until Element Is Visible    ${locator_Confirm-Remove}    5
    Click Element    ${locator_Confirm-Remove}
    Wait Until Page Does Not Contain Element    ${locator_Check-Thai-Remove}    5
    Click Element    ${locator_btn-Back}  
    Wait Until Element Is Visible    ${locator_Languages-input}    5  
    Click Element    ${locator_btn-Back}
    Sleep    3s    #ที่ต้องใช้คำสั่ง Sleep เพราะว่าลองใช้ Wait Until Element Is Visible ให้เช็ค Element แล้ว เกิดการ Error "Cached elements do not exist in DOM anymore" ครับ
    Click Element    ${locator_btn-Back}
    FOR  ${n}  IN RANGE    3
        Swipe                            500    900    500    2000    2000
    END
    Wait Until Page Contains    Settings    5
    Close Application 
    

    


