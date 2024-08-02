*** Settings ***
Library    SeleniumLibrary
Library    ExcelRobot


*** Variables ***


${Url}                                 https://cib.go.th/
${Browser}                             gc
${locator_CIBLOGO-FirstPage}           xpath=/html/body/div/div/div[1]/div[2]/nav/div/div/div[1]/div[1]/div/a/div/img[2]
${locator_PopupHome}                   xpath=/html/body/div[1]/div/div[5]/div[1]/div/div/div/div/img
${locator_Close-PopupHome}             xpath=/html/body/div[1]/div/div[5]/div[1]/div/div/div/div/div/div[2]/button
${locator_chkBox-PopupHome}            xpath=/html/body/div[1]/div/div[5]/div[1]/div/div/div/div/div/div[1]/input     
${locator_AcceptCookie}                xpath=/html/body/div/div/div[2]/div[2]/div/div[2]/div/button[2]

${locator_Collapse-More}               xpath=/html/body/div/div/div[1]/div[2]/div/div/div/span[3]

${locator_Readmore-1}                  xpath=/html/body/div/div/div[5]/div[2]/div/div[2]/button
${locator_BacktoHome}                  xpath=/html/body/div/div/div[4]/div[2]/div[1]/div/button

# ------------ locator Default Menu ---------------

${locator_MainPage}                    xpath=/html/body/div/div/div[1]/div[2]/nav/div/div/div[1]/div[2]/div/a[1]
${locator_AboutCIB}                    xpath=/html/body/div/div/div[1]/div[2]/nav/div/div/div[1]/div[2]/div/a[2]
${locator_PressRelease}                xpath=/html/body/div/div/div[1]/div[2]/nav/div/div/div[1]/div[2]/div/a[3]
${locator_E-Learning}                  xpath=/html/body/div/div/div[1]/div[2]/nav/div/div/div[1]/div[2]/div/a[4]
${locator_E-Service}                   xpath=/html/body/div/div/div[1]/div[2]/nav/div/div/div[1]/div[2]/div/a[5]
${locator_Transparency}                xpath=/html/body/div/div/div[1]/div[2]/nav/div/div/div[1]/div[2]/div/a[6]

# ------------ locator Affiliated agencies ---------------

${locator_Police-1}                    xpath=/html/body/div/div/div[5]/div[3]/div[2]/div/div[1]/div/div[1]
${locator_Police-2}                    xpath=/html/body/div/div/div[5]/div[3]/div[2]/div/div[1]/div/div[2]
${locator_Police-3}                    xpath=/html/body/div/div/div[5]/div[3]/div[2]/div/div[1]/div/div[3]
${locator_Police-4}                    xpath=/html/body/div/div/div[5]/div[3]/div[2]/div/div[1]/div/div[4]
${locator_Police-5}                    xpath=/html/body/div/div/div[5]/div[3]/div[2]/div/div[1]/div/div[5]
${locator_Police-6}                    xpath=/html/body/div/div/div[5]/div[3]/div[2]/div/div[1]/div/div[6]
${locator_Police-7}                    xpath=/html/body/div/div/div[5]/div[3]/div[2]/div/div[1]/div/div[7]
${locator_Police-8}                    xpath=/html/body/div/div/div[5]/div[3]/div[2]/div/div[1]/div/div[8]
${locator_Police-9}                    xpath=/html/body/div/div/div[5]/div[3]/div[2]/div/div[1]/div/div[9]
${locator_Police-10}                   xpath=/html/body/div/div/div[5]/div[3]/div[2]/div/div[1]/div/div[10]
${locator_Police-11}                   xpath=/html/body/div/div/div[5]/div[3]/div[2]/div/div[1]/div/div[11]
${locator_Police-12}                   xpath=/html/body/div/div/div[5]/div[3]/div[2]/div/div[2]/div/div/img
${locator_ReadAll}                     xpath=/html/body/div/div/div[5]/div[3]/div[2]/div/div[3]/span
${locator_Agencies}                    xpath=/html/body/div/div/div[4]/div[2]/div[3]/div/div/div/h1/span

# ------------ locator Plays VDO ---------------
                                
${locator_VDO}                         xpath=/html/body/div/div/div[5]/div[4]/div[1]/div[2]/div/div/div[3]/div/div[2]/div[2]/div/p[1]

# ------------ locator Performance ---------------

${locator_LinkNewsPerformance1}        xpath=/html/body/div/div/div[5]/div[4]/div[2]/div/div[2]/div[3]/div[1]/div/div[1]/a/div/div[2]/h2
${locator_LinkNewsPerformance2}        xpath=/html/body/div/div/div[5]/div[4]/div[2]/div/div[2]/div[3]/div[1]/div/div[2]/a/div/div[2]/h2
${locator_ReadPerformanceAll}          xpath=/html/body/div/div/div[5]/div[4]/div[2]/div/div[2]/div[5]/p
${locator_Fullnews1}                   xpath=/html/body/div/div/div[4]/div[2]/div[2]/div/div/h4
${locator_Fullnews2}                   xpath=/html/body/div/div/div[4]/div[2]/div[2]/div/div/h4

# ------------ locator Social Media ---------------

${locator_Social_FB}                   xpath=/html/body/div/div/div[5]/div[5]/div[1]/div[2]/div[2]/div[2]/div/button[3]
${locator_FB_Content}                  id=box-socials-0
${locator_Social_X}                    xpath=/html/body/div/div/div[5]/div[5]/div[1]/div[2]/div[2]/div[2]/div/button[4]
${locator_X_Content}                   id=box-socials-2
${locator_Social_TT}                   xpath=/html/body/div/div/div[5]/div[5]/div[1]/div[2]/div[2]/div[2]/div/button[5]
${locator_TT_Content}                  id=box-socials-4
${locator_Social_IG}                   xpath=/html/body/div/div/div[5]/div[5]/div[1]/div[2]/div[2]/div[2]/div/button[6]
${locator_IG_Content}                  id=box-socials-6

# ------------ locator Warning News ---------------

${locator_Warning1}                    xpath=/html/body/div/div/div[5]/div[5]/div[2]/div/div[3]/div[1]/a/img
${locator_Warning2}                    xpath=/html/body/div/div/div[5]/div[5]/div[2]/div/div[3]/div[2]/a/img
${locator_Warning3}                    xpath=/html/body/div/div/div[5]/div[5]/div[2]/div/div[3]/div[3]/a/img
${locator_NewsWarning3}                xpath=/html/body/div/div/div[4]/div[2]/div[2]/div/div/h4
${locator_ReadAll2}                    xpath=/html/body/div/div/div[5]/div[5]/div[2]/div/div[4]/p

# ------------ locator Activity ---------------

${locator_Activity1}                   xpath=/html/body/div/div/div[5]/div[5]/div[4]/div[2]/div[2]/a/div/div[1]/img
${locator_NewsActivity}                xpath=/html/body/div/div/div[4]/div[2]/div[2]/div/div/h4

# ------------ locator Contact ---------------

${locator_Map}                         xpath=/html/body/div/div/div[5]/div[6]/div/div[1]/div/div[2]/div/div/div[3]/div[1]/div[2]
${locator_Contact}                     xpath=/html/body/div/div/div[5]/div[6]/div/div[2]/div/div[1]/p[2]
${locator_Email}                       xpath=/html/body/div/div/div[5]/div[6]/div/div[2]/div/div[2]/p[2]/a
${locator_Phonenumber}                 xpath=/html/body/div/div/div[5]/div[6]/div/div[2]/div/div[3]/p[2]/a









