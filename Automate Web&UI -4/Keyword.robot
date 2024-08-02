*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/Variables.robot


*** Keywords ***

Open Web Browser
    Open Browser                            ${Url}    ${Browser}
    Maximize Browser Window
     Wait Until Element Is Visible          ${locator_Btn_Start}    5
    Click Element                           ${locator_Btn_Start}
    Wait Until Page Contains                Contact Details    5

Open Web Browser and Filed data in page Contact Details
    Open Browser                            ${Url}    ${Browser}
    Maximize Browser Window
     Wait Until Element Is Visible          ${locator_Btn_Start}    5
    Click Element                           ${locator_Btn_Start}
    Wait Until Page Contains                Contact Details    5
    Field data Contact Details

Field data Contact Details
    Wait Until Page Contains                Contact Details 
    Wait Until Element Is Visible           ${locator_Country-Code}    5
    Click Element                           ${locator_Country-Code}
    Wait Until Element Is Visible           ${locator_Input-Country-Code}    5
    Input Text                              ${locator_Input-Country-Code}    Thailand
    Wait Until Element Is Visible           ${locator_Thailand-Code}    5
    Click Element                           ${locator_Thailand-Code}

    Wait Until Element Is Visible           ${locator_telephone-Field}    5
    Input Text                              ${locator_telephone-Field}    0891234567

    Wait Until Element Is Visible           ${locator_emailEmail-Field}    5
    Input Text                              ${locator_emailEmail-Field}    Test@email.com

    Wait Until Element Is Visible           ${locator_emailConfirmation-Field}    5
    Input Text                              ${locator_emailConfirmation-Field}    Test@email.com

    Wait Until Element Is Visible           ${locator_addressCountryField}    5
    Click Element                           ${locator_addressCountryField}
    Wait Until Element Is Visible           ${locator_Search-Country-adress}    5
    Input Text                              ${locator_Search-Country-adress}    Thailand
    Wait Until Element Is Visible           ${locator_Country-adress-TH}    5
    Click Element                           ${locator_Country-adress-TH}

    Wait Until Element Is Visible           ${locator_addressAddressField}    5
    Input Text                              ${locator_addressAddressField}    321 Street Road
    Set Focus To Element                    ${locator_addressZipcodeField}    
    Wait Until Element Is Visible           ${loctor_addressProvinceField}    5
    Click Element                           ${loctor_addressProvinceField}
    Wait Until Element Is Visible           ${locator_Search-Province}    5
    Input Text                              ${locator_Search-Province}    16130
    Wait Until Element Is Visible           ${locator_Select-Province}    5
    Click Element                           ${locator_Select-Province}

    Wait Until Element Is Visible           ${locator_addressDistrictField}    5
    Click Element                           ${locator_addressDistrictField}
    Wait Until Element Is Visible           ${locator_Search-District}    5
    Input Text                              ${locator_Search-District}    Bang Rachan
    Wait Until Element Is Visible           ${locator_Select-District}    5
    Click Element                           ${locator_Select-District}

    Wait Until Element Is Visible           ${locator_addressSubdistrictField}    5
    Click Element                           ${locator_addressSubdistrictField}
    Wait Until Element Is Visible           ${locator_Search-SubDistrict}    5
    Input Text                              ${locator_Search-SubDistrict}    Sing
    Wait Until Element Is Visible           ${locator_Select-SubDistrict}    5
    Click Element                           ${locator_Select-SubDistrict}

    Wait Until Element Is Visible           ${locator_addressZipcodeField}    5
    Click Element                           ${locator_addressZipcodeField}
    Wait Until Element Is Visible           ${locator_Search-Zipcode}    5
    Input Text                              ${locator_Search-Zipcode}    16130
    Wait Until Element Is Visible           ${locator_Select-Zipcode}    5
    Click Element                           ${locator_Select-Zipcode}

    Wait Until Element Is Visible           ${locator_Btn-Next}    5
    Click Element                           ${locator_Btn-Next}
    

Field data Score
    Wait Until Page Contains                Score    5 
    Wait Until Element Is Visible           ${locator_Ques-1}  
    Select From List By Value               ${locator_Ques-1}    score 3 
    Click Element                           ${locator_Radio-3}                
    Click Element                           ${locator_CheckBox-3}
    Wait Until Element Is Visible           ${locator_Btn-Submit}    5
    Click Element                           ${locator_Btn-Submit} 
    Wait Until Page Contains                Verification Complete    5   
    Wait Until Element Is Visible           ${locator_GoToHomePage}    5
    Click Element                           ${locator_GoToHomePage}  
    Wait Until Element Is Visible           ${locator_UpPassHome}    5

Verify submit button able to click on dynamic result level 3
    Open Web Browser and Filed data in page Contact Details 
    [Arguments]    ${Question1}    ${Question2}    ${Question3}
    
    IF  ${Question1} == 1
    Wait Until Page Contains                 Score
    Wait Until Element Is Visible            ${locator_Ques-1}  
    Select From List By Value                ${locator_Ques-1}    score 1
    ELSE IF  ${Question1} == 2
    Wait Until Page Contains                 Score
    Wait Until Element Is Visible            ${locator_Ques-1}  
    Select From List By Value                ${locator_Ques-1}    score 2 
    ELSE IF  ${Question1} == 3
    Wait Until Page Contains                 Score
    Wait Until Element Is Visible            ${locator_Ques-1}  
    Select From List By Value                ${locator_Ques-1}    score 3     
    END

    IF  ${Question2} == 1
    Wait Until Page Contains                 Score
    Wait Until Element Is Visible            ${locator_Radio-1}    5
    Click Element                            ${locator_Radio-1}
    ELSE IF  ${Question2} == 2
    Wait Until Page Contains                 Score
    Wait Until Element Is Visible            ${locator_Radio-2}    5
    Click Element                            ${locator_Radio-2} 
    ELSE IF  ${Question2} == 3
    Wait Until Page Contains                 Score
    Wait Until Element Is Visible            ${locator_Radio-3}    5
    Click Element                            ${locator_Radio-3}  
    END

    IF  ${Question3} == 1
    Wait Until Page Contains                 Score
    Wait Until Element Is Visible            ${locator_CheckBox-1}    5    
    Click Element                            ${locator_CheckBox-1}
    ELSE IF  ${Question3} == 2
    Wait Until Page Contains                 Score
    Wait Until Element Is Visible            ${locator_CheckBox-2}    5
    Click Element                            ${locator_CheckBox-2}
    ELSE IF  ${Question3} == 3
    Wait Until Page Contains                 Score
    Wait Until Element Is Visible            ${locator_CheckBox-3}    5
    Click Element                            ${locator_CheckBox-3} 
    END

    Wait Until Element Is Visible            ${locator_Btn-Submit}    5
    Close Browser


Verify submit button not able to click when dynamic result is less level 3
    Open Web Browser and Filed data in page Contact Details 
    [Arguments]    ${Question1}    ${Question2}    ${Question3}
    
    IF  ${Question1} == 1
    Wait Until Page Contains                 Score
    Wait Until Element Is Visible            ${locator_Ques-1}  
    Select From List By Value                ${locator_Ques-1}    score 1
    ELSE IF  ${Question1} == 2
    Wait Until Page Contains                 Score
    Wait Until Element Is Visible            ${locator_Ques-1}  
    Select From List By Value                ${locator_Ques-1}    score 2 
    ELSE IF  ${Question1} == 3
    Wait Until Page Contains                 Score
    Wait Until Element Is Visible            ${locator_Ques-1}  
    Select From List By Value                ${locator_Ques-1}    score 3     
    END

    IF  ${Question2} == 1
    Wait Until Page Contains                 Score
    Wait Until Element Is Visible            ${locator_Radio-1}    5
    Click Element                            ${locator_Radio-1}
    ELSE IF  ${Question2} == 2
    Wait Until Page Contains                 Score
    Wait Until Element Is Visible            ${locator_Radio-2}    5
    Click Element                            ${locator_Radio-2} 
    ELSE IF  ${Question2} == 3
    Wait Until Page Contains                 Score
    Wait Until Element Is Visible            ${locator_Radio-3}    5
    Click Element                            ${locator_Radio-3}  
    END

    IF  ${Question3} == 1
    Wait Until Page Contains                 Score
    Wait Until Element Is Visible            ${locator_CheckBox-1}    5 
    Click Element                            ${locator_CheckBox-1}
    ELSE IF  ${Question3} == 2
    Wait Until Page Contains                 Score
    Wait Until Element Is Visible            ${locator_CheckBox-2}    5 
    Click Element                            ${locator_CheckBox-2}
    ELSE IF  ${Question3} == 3
    Wait Until Page Contains                 Score
    Wait Until Element Is Visible            ${locator_CheckBox-3}    5 
    Click Element                            ${locator_CheckBox-3} 
    END

    Wait Until Element Is Not Visible        ${locator_Btn-Submit}    5
    Close Browser

verify Error msg
    [Arguments]    ${locatorMsg}    ${ErrorMsg}=${EMPTY}
    ${text}=    Get Text                     ${locatorMsg}
    Should Be Equal As Strings    ${text}    ${ErrorMsg}

Verify Fail Error Msg  
    Open Web Browser  
    [Arguments]    ${CountryCode}    ${Phone}    ${Email}    ${ConfirmEmail}    ${StreetAdress}    ${Province}    ${District}    ${Sub-District}    ${ZipCode}    ${locatorMsg}    ${MsgError}
    
    IF  ${CountryCode} == 1
    Wait Until Element Is Visible             ${locator_Country-Code}              5
    Click Element                             ${locator_Country-Code}
    Wait Until Element Is Visible             ${locator_Input-Country-Code}        5
    Input Text                                ${locator_Input-Country-Code}        Thailand
    Wait Until Element Is Visible             ${locator_Thailand-Code}             5
    Click Element                             ${locator_Thailand-Code}
    END
    
    Wait Until Element Is Visible             ${locator_telephone-Field}            5
    Input Text                                ${locator_telephone-Field}            ${Phone}
    Wait Until Element Is Visible             ${locator_emailEmail-Field}           5
    Input Text                                ${locator_emailEmail-Field}           ${Email}
    Wait Until Element Is Visible             ${locator_emailConfirmation-Field}    5
    Input Text                                ${locator_emailConfirmation-Field}    ${ConfirmEmail}
     Wait Until Element Is Visible            ${locator_addressAddressField}        5
    Input Text                                ${locator_addressAddressField}        ${StreetAdress}
    Set Focus To Element                      ${locator_addressZipcodeField} 

    IF       ${Province} == 1
    Wait Until Element Is Visible             ${loctor_addressProvinceField}    5
    Click Element                             ${loctor_addressProvinceField}
    Wait Until Element Is Visible             ${locator_Search-Province}    5
    Input Text                                ${locator_Search-Province}    16130
    Wait Until Element Is Visible             ${locator_Select-Province}    5
    Click Element                             ${locator_Select-Province}        
    END

    IF       ${District} == 1
    Wait Until Element Is Visible             ${locator_addressDistrictField}    5
    Click Element                             ${locator_addressDistrictField}
    Wait Until Element Is Visible             ${locator_Search-District}    5
    Input Text                                ${locator_Search-District}    Bang Rachan
    Wait Until Element Is Visible             ${locator_Select-District}    5
    Click Element                             ${locator_Select-District}        
    END

    IF       ${Sub-District} == 1
    Wait Until Element Is Visible             ${locator_addressSubdistrictField}    5
    Click Element                             ${locator_addressSubdistrictField}
    Wait Until Element Is Visible             ${locator_Search-SubDistrict}    5
    Input Text                                ${locator_Search-SubDistrict}    Sing
    Wait Until Element Is Visible             ${locator_Select-SubDistrict}    5
    Click Element                             ${locator_Select-SubDistrict}        
    END

    IF       ${ZipCode} == 1
    Wait Until Element Is Visible             ${locator_addressZipcodeField}    5
    Click Element                             ${locator_addressZipcodeField}
    Wait Until Element Is Visible             ${locator_Search-Zipcode}    5
    Input Text                                ${locator_Search-Zipcode}    16130
    Wait Until Element Is Visible             ${locator_Select-Zipcode}    5
    Click Element                             ${locator_Select-Zipcode}        
    END
    
    Wait Until Element Is Visible             ${locator_Btn-Next}    5
    Click Element                             ${locator_Btn-Next}

    Verify Error msg                          ${locatorMsg}    ${MsgError}
    Close Browser













