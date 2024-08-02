*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/Variables.robot


*** Keywords ***

Open Web Browser
    Set Selenium Speed                                    0.4
    Open Browser                            ${Url}    ${Browser}
    Maximize Browser Window
    Wait Until Element Is Visible           ${locator_PopupHome}             5
    Click Element                           ${locator_Close-PopupHome}
    Wait Until Element Is Visible           ${locator_AcceptCookie}          5
    Click Element                           ${locator_AcceptCookie}
    Wait Until Element Is Visible           ${locator_PopupHome}             5
    Click Element                           ${locator_Close-PopupHome}


Verify Collapse 
    Wait Until Element Is Visible           ${locator_Collapse-More}         5
    Click Element                           ${locator_Collapse-More}
    Wait Until Page Contains                เว็บไซต์ทางการใช้ .go.th             5
    Wait Until Page Contains                เว็บไซต์ .go.th จะใช้ HTTPS เท่านั้น    5 
    Click Element                           ${locator_Collapse-More}
    Close Browser       
 
 Verify Default Menu
    Wait Until Element Is Visible           ${locator_MainPage}            5
    Click Element                           ${locator_MainPage}
    Wait Until Element Is Visible           ${locator_PopupHome}            5
    Click Element                           ${locator_Close-PopupHome}
    Wait Until Element Is Visible           ${locator_CIBLOGO-FirstPage}    5
    
    Wait Until Element Is Visible           ${locator_AboutCIB}    5
    Click Element                           ${locator_AboutCIB}
    Wait Until Page Contains                ประวัติ    5
    Wait Until Element Is Visible           ${locator_MainPage}    5
    Click Element                           ${locator_MainPage}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome}  

    Wait Until Element Is Visible           ${locator_PressRelease}    5
    Click Element                           ${locator_PressRelease}
    Wait Until Page Contains                ข่าวทั้งหมด    5
    Wait Until Element Is Visible           ${locator_MainPage}    5
    Click Element                           ${locator_MainPage}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome} 

    Wait Until Element Is Visible           ${locator_E-Learning}    5
    Click Element                           ${locator_E-Learning}
    Wait Until Page Contains                โปรดติดตามเร็ว ๆ นี้    5
    Wait Until Element Is Visible           ${locator_MainPage}    5
    Click Element                           ${locator_MainPage}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome} 

    Wait Until Element Is Visible           ${locator_E-Service}    5
    Click Element                           ${locator_E-Service}
    Wait Until Page Contains                E-Service    5
    Wait Until Element Is Visible           ${locator_MainPage}    5
    Click Element                           ${locator_MainPage}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome}  

    Wait Until Element Is Visible           ${locator_Transparency}    5
    Click Element                           ${locator_Transparency}
    Wait Until Page Contains                ความโปร่งใส    5
    Wait Until Element Is Visible           ${locator_MainPage}    5
    Click Element                           ${locator_MainPage}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome}

Verify Read more history
    Execute JavaScript                      window.scrollTo(1,150)
    Wait Until Element Is Visible           ${locator_Readmore-1}    5
    Click Element                           ${locator_Readmore-1}
    Wait Until Page Contains                ประวัติ    5

Verify Affiliated agencies
    Execute JavaScript                      window.scrollTo(1,700)
    Wait Until Element Is Visible           ${locator_Police-1}    5
    Click Element                           ${locator_Police-1}
    Wait Until Page Contains                กองบังคับการปราบปราม    5
    Wait Until Element Is Visible           ${locator_BacktoHome}    5
    Click Element                           ${locator_BacktoHome}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome}

    Wait Until Element Is Visible           ${locator_Police-2}    5
    Click Element                           ${locator_Police-2}
    Wait Until Page Contains                กองบังคับการปราบปรามการค้ามนุษย์    5
    Wait Until Element Is Visible           ${locator_BacktoHome}    5
    Click Element                           ${locator_BacktoHome}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome}

    Wait Until Element Is Visible           ${locator_Police-3}    5
    Click Element                           ${locator_Police-3}
    Wait Until Page Contains                กองบังคับการตำรวจทางหลวง    5
    Wait Until Element Is Visible           ${locator_BacktoHome}    5
    Click Element                           ${locator_BacktoHome}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome}
    
    Wait Until Element Is Visible           ${locator_Police-4}    5
    Click Element                           ${locator_Police-4}
    Wait Until Page Contains                กองบังคับการปราบปรามการกระทำความผิดเกี่ยวกับอาชญากรรมทางเศรษฐกิจ    5
    Wait Until Element Is Visible           ${locator_BacktoHome}    5
    Click Element                           ${locator_BacktoHome}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome}

    Wait Until Element Is Visible           ${locator_Police-5}    5
    Click Element                           ${locator_Police-5}
    Wait Until Page Contains                กองบังคับการปราบปรามการกระทำความผิดเกี่ยวกับทรัพยากรธรรมชาติและสิ่งแวดล้อม    5
    Wait Until Element Is Visible           ${locator_BacktoHome}    5
    Click Element                           ${locator_BacktoHome}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome}

    Wait Until Element Is Visible           ${locator_Police-6}    5
    Click Element                           ${locator_Police-6}
    Wait Until Page Contains                กองบังคับการปราบปรามการกระทำความผิดเกี่ยวกับการคุ้มครองผู้บริโภค    5
   Wait Until Element Is Visible            ${locator_BacktoHome}    5
    Click Element                           ${locator_BacktoHome}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome}

    Wait Until Element Is Visible           ${locator_Police-7}    5
    Click Element                           ${locator_Police-7}
    Wait Until Page Contains                กองบังคับการปราบปรามการกระทำความผิดเกี่ยวกับอาชญากรรมทางเทคโนโลยี    5
   Wait Until Element Is Visible            ${locator_BacktoHome}    5
    Click Element                           ${locator_BacktoHome}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome}

    Wait Until Element Is Visible           ${locator_Police-8}    5
    Click Element                           ${locator_Police-8}
    Wait Until Page Contains                กองบังคับการป้องกันปราบปรามการทุจริตและประพฤติมิชอบ    5
    Wait Until Element Is Visible           ${locator_BacktoHome}    5
    Click Element                           ${locator_BacktoHome}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome}

    Wait Until Element Is Visible           ${locator_Police-9}    5
    Click Element                           ${locator_Police-9}
    Wait Until Page Contains                กองบังคับการตำรวจน้ำ    5
    Wait Until Element Is Visible           ${locator_BacktoHome}    5
    Click Element                           ${locator_BacktoHome}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome}

    Wait Until Element Is Visible           ${locator_Police-10}    5
    Click Element                           ${locator_Police-10}
    Wait Until Page Contains                กองบังคับการปฏิบัติการพิเศษ    5
    Wait Until Element Is Visible           ${locator_BacktoHome}    5
    Click Element                           ${locator_BacktoHome}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome}

    Wait Until Element Is Visible           ${locator_Police-11}    5
    Click Element                           ${locator_Police-11}
    Wait Until Page Contains                ศูนย์ฝึกอบรมกองบัญชาการตำรวจสอบสวนกลาง    5
    Wait Until Element Is Visible           ${locator_BacktoHome}    5
    Click Element                           ${locator_BacktoHome}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome}

    Wait Until Element Is Visible           ${locator_Police-12}    5
    Click Element                           ${locator_Police-12}
    Wait Until Page Contains                หน่วยหนุมานภายใต้กองบังคับการปราบปราม    5
    Wait Until Element Is Visible           ${locator_BacktoHome}    5
    Click Element                           ${locator_BacktoHome}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome}

    Wait Until Element Is Visible           ${locator_ReadAll}    5
    Click Element                           ${locator_ReadAll}
    Wait Until Element Is Visible           ${locator_Agencies}

Verify VDO Content
    Set Focus To Element                    ${locator_VDO}
    Wait Until Element Is Visible           ${locator_VDO}    5
    
Verify Performance
    Execute JavaScript                      window.scrollTo(1,2150)
    Wait Until Page Contains                ผลการปฎิบัติงาน 
    Wait Until Element Is Visible           ${locator_LinkNewsPerformance1}        5      
    Click Element                           ${locator_LinkNewsPerformance1}
    Wait Until Element Is Visible           ${locator_Fullnews1}    5
    Wait Until Element Is Visible           ${locator_BacktoHome}    5
    Click Element                           ${locator_BacktoHome}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome}

    Wait Until Element Is Visible           ${locator_LinkNewsPerformance2}        5      
    Click Element                           ${locator_LinkNewsPerformance2}
    Wait Until Element Is Visible           ${locator_Fullnews1}    5
    Wait Until Element Is Visible           ${locator_BacktoHome}    5
    Click Element                           ${locator_BacktoHome}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome}

    Execute JavaScript                      window.scrollTo(1,2700)
    Wait Until Element Is Visible           ${locator_ReadPerformanceAll}        5      
    Click Element                           ${locator_ReadPerformanceAll}
    Wait Until Page Contains                ผลการปฎิบัติงาน

Verify Social Media 
    Execute JavaScript                      window.scrollTo(1,3500)
    Wait Until Page Contains                โซเชียลมีเดีย    5
    Wait Until Element Is Visible           ${locator_Social_FB}    5
    Click Element                           ${locator_Social_FB} 
    Wait Until Element Is Visible           ${locator_FB_Content}    5

    Wait Until Element Is Visible           ${locator_Social_X}    5
    Click Element                           ${locator_Social_X}

    Wait Until Element Is Visible           ${locator_X_Content}    5
    Execute JavaScript                      window.scrollTo(1,3330)
    Wait Until Element Is Visible           ${locator_Social_TT}    5
    Click Element                           ${locator_Social_TT}    
    Wait Until Element Is Visible           ${locator_TT_Content}    5

    Wait Until Element Is Visible           ${locator_Social_IG}    5
    Click Element                           ${locator_Social_IG}   
    Wait Until Element Is Visible           ${locator_IG_Content}    5

Verify Warning Knowledge
    Execute JavaScript                      window.scrollTo(1,6200)
    Wait Until Page Contains                ความรู้เตือนภัย  
    Wait Until Element Is Visible           ${locator_Warning1}    5
    Click Element                           ${locator_Warning1}  
    Wait Until Page Contains                รวมดาวกองร้อยปอยเปต แต่งเป็นตำรวจ คอลหลอกเหยื่อให้สูญเงิน
    Wait Until Element Is Visible           ${locator_BacktoHome}    5
    Click Element                           ${locator_BacktoHome}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome}
    Execute JavaScript                      window.scrollTo(1,6200) 

    Wait Until Element Is Visible           ${locator_Warning2}    5
    Click Element                           ${locator_Warning2}  
    Wait Until Page Contains                ระวัง‼️ มิจฉาชีพหลอกลงทะเบียน อ้างรับเงินคืนจากแก๊งคอลเซ็นเตอร์
    Wait Until Element Is Visible           ${locator_BacktoHome}    5
    Click Element                           ${locator_BacktoHome}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome}
    Execute JavaScript                      window.scrollTo(1,6200) 

    Wait Until Element Is Visible           ${locator_Warning2}    5
    Click Element                           ${locator_Warning2}  
    Wait Until Element Is Visible           ${locator_NewsWarning3}    5
    Wait Until Element Is Visible           ${locator_BacktoHome}    5
    Click Element                           ${locator_BacktoHome}
    Wait Until Element Is Visible           ${locator_PopupHome}    5
    Click Element                           ${locator_Close-PopupHome}
    Execute JavaScript                      window.scrollTo(1,6200) 

    Wait Until Element Is Visible           ${locator_ReadAll2}    5
    Click Element                           ${locator_ReadAll2}  
    Wait Until Page Contains                ความรู้เตือนภัย

Verify Activity
    Execute JavaScript                      window.scrollTo(1,7100)
    Wait Until Page Contains                กิจกรรม  
    Wait Until Element Is Visible           ${locator_Activity1}    5
    Click Element                           ${locator_Activity1}
    Wait Until Element Is Visible           ${locator_NewsActivity}    5
    Click Element                           ${locator_NewsActivity}

Verify Contact
    Execute JavaScript                      window.scrollTo(1,8500)
    Wait Until Page Contains                ติดต่อเรา
    Wait Until Element Is Visible           ${locator_Map}    5
    Wait Until Element Is Visible           ${locator_Contact}    5
    Wait Until Element Is Visible           ${locator_Email}    5
    Wait Until Element Is Visible           ${locator_Phonenumber}    5     


























