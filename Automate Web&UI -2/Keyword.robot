*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/Variables.robot


*** Keywords ***

Open Web Browser
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
    
Search Youtube
    Wait Until Element Is Visible    ${locator_Search}    5
    Input Text    ${locator_Search}    ธาตุทองซาวด์
    Wait Until Element Is Visible    ${locator_Search-btn}    5
    Click Element    ${locator_Search-btn}
    Wait Until Element Is Visible    ${locator_Result-Search}    5
    Wait Until Page Contains    YOUNGOHM - ธาตุทองซาวด์ ft. SONOFO (Official Video)    5    
    Click Element    ${locator_Result-Search}
    Wait Until Element Is Visible    ${locator_PlayVDO}    5
    Sleep    15
    Wait Until Element Is Visible    ${locator_Menu}    5
    Click Element    ${locator_Menu}
    Wait Until Element Is Visible    ${locator_History}    5
    Click Element    ${locator_History}
    Wait Until Page Contains    Keep track of what you watch    5
    Sleep    3

Input Data For Search
    [Arguments]    ${song}
    Wait Until Element Is Visible    ${locator_Search}    5
    Input Text    ${locator_Search}    ${song}
    Wait Until Element Is Visible    ${locator_Search-btn}    5
    Click Element    ${locator_Search-btn}


Get data from Excel
    Open Excel    ${pathExcel}
    ${Rowcount}=    Get Row Count    ${SheetNameExcel}
    FOR  ${list}  IN RANGE    0    ${Rowcount}
    ${song}    Read Cell Data    ${SheetNameExcel}    0    ${list}  
    Input Data For Search    ${song}
    END
     