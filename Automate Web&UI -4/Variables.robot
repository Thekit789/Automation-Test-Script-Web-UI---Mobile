*** Settings ***
Library    SeleniumLibrary
Library    ExcelRobot


*** Variables ***


${Url}                                 https://app.uppass.io/en/mid-assignment
${Browser}                             gc
${locator_Btn_Start}                   xpath=/html/body/div/div/main/div/div/div[2]/div[4]/div/div/div/button

# ----------------------- locator Contact Details --------------------

${locator_Country-Code}                xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[2]/div/div/div/div[2]/div/div[1]/div/div/div[1]/div/div[1]/div/div/button
${locator_Input-Country-Code}          xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[2]/div/div/div/div[2]/div/div[1]/div/div/div[1]/div/div[2]/div/div/div/div[1]/input
${locator_Thailand-Code}               xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[2]/div/div/div/div[2]/div/div[1]/div/div/div[1]/div/div[2]/div/div/div/div[2]/a[1]/div/div[2]
${locator_telephone-Field}             id=telephoneField
${locator_emailEmail-Field}            id=emailEmailField
${locator_emailConfirmation-Field}     id=emailConfirmationField
${locator_addressCountryField}         id=addressCountryField
${locator_Search-Country-adress}       xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[4]/div/fieldset/div[1]/div/div/div/div[2]/div/div[1]/div/div/div[2]/div/div/div/div[1]/input
${locator_Country-adress-TH}           xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[4]/div/fieldset/div[1]/div/div/div/div[2]/div/div[1]/div/div/div[2]/div/div/div/div[2]/a[2]/span[2]
${locator_addressAddressField}         id=addressAddressField
${loctor_addressProvinceField}         id=addressProvinceField
${locator_Search-Province}             xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[4]/div/fieldset/div[3]/div/div/div/div[2]/div/div[1]/div/div/div[2]/div/div/div/div[1]/input
${locator_Select-Province}             xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[4]/div/fieldset/div[3]/div/div/div/div[2]/div/div[1]/div/div/div[2]/div/div/div/div[2]/a[2]/div/div[2]

${locator_addressDistrictField}        id=addressDistrictField
${locator_Search-District}             xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[4]/div/fieldset/div[4]/div/div/div/div[2]/div/div[1]/div/div/div[2]/div/div/div/div[1]/input
${locator_Select-District}             xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[4]/div/fieldset/div[4]/div/div/div/div[2]/div/div[1]/div/div/div[2]/div/div/div/div[2]/a[2]/div/div[1]

${locator_addressSubdistrictField}     id=addressSubdistrictField
${locator_Search-SubDistrict}          xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[4]/div/fieldset/div[5]/div/div/div/div[2]/div/div[1]/div/div/div[2]/div/div/div/div[1]/input
${locator_Select-SubDistrict}          xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[4]/div/fieldset/div[5]/div/div/div/div[2]/div/div[1]/div/div/div[2]/div/div/div/div[2]/a[4]/div/div[1]

${locator_addressZipcodeField}         id=addressZipcodeField
${locator_Search-Zipcode}              xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[4]/div/fieldset/div[6]/div/div/div/div[2]/div/div[1]/div/div/div[2]/div/div/div/div[1]/input
${locator_Select-Zipcode}              xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[4]/div/fieldset/div[6]/div/div/div/div[2]/div/div[1]/div/div/div[2]/div/div/div/div[2]/a[2]/div/div[1]

# ----------------------- locator Button --------------------

${locator_Btn-Next}                    id=button__forward
${locator_Btn-Previous}                id=button__back
${locator_Btn-Submit}                  id=button__forward    
${locator_GoToHomePage}                xpath=/html/body/div/div/main/div/div/div[2]/div[4]/div/div/div/div[2]/div/div[1]/div/div/div/div/a
${locator_UpPassHome}                  xpath=/html/body/div/div/nav/div/div[1]/div/div

# ----------------------- locator Score --------------------

${locator_Ques-1}                      id=dropdownField

${locator_Radio-1}                     xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[3]/div/div/div/div[2]/div/div[1]/div/div[1]
${locator_Radio-2}                     xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[3]/div/div/div/div[2]/div/div[1]/div/div[2]
${locator_Radio-3}                     xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[3]/div/div/div/div[2]/div/div[1]/div/div[3]

${locator_CheckBox-1}                  xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[4]/div/div/div/div[2]/div/div[1]/div/div/div[1]
${locator_CheckBox-2}                  xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[4]/div/div/div/div[2]/div/div[1]/div/div/div[2]
${locator_CheckBox-3}                  xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[4]/div/div/div/div[2]/div/div[1]/div/div/div[3]

${locator_Phone_Error}                 xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[2]/div/div/div/div[2]/div/div[2]/p/span[2]
${locator_Email_Error}                 xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[3]/div/fieldset/div[1]/div/div/div/div[2]/div/div[2]/p/span[2]           
${locator_Confirm_Email_Error}         xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[3]/div/fieldset/div[2]/div/div/div/div[2]/div/div[2]/p/span[2]
${locator_Confirm_Email_Error2}        xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[3]/div/fieldset/div[2]/div/div/div/div[2]/div/div[2]/p/span[2]
${locator_StreesAdress-Error}          xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[4]/div/fieldset/div[2]/div/div/div/div[2]/div/div[2]/p/span[2]
${locator_Province-Error}              xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[4]/div/fieldset/div[3]/div/div/div/div[2]/div/div[2]/p/span[2]
${locator_District-Error}              xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[4]/div/fieldset/div[4]/div/div/div/div[2]/div/div[2]/p/span[2]
${locator_SubDistrict-Error}           xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[4]/div/fieldset/div[5]/div/div/div/div[2]/div/div[2]/p/span[2]
${locator_ZipCode_Error}               xpath=/html/body/div/div/main/div/div/div[1]/div/div/div/div[2]/div/div[2]/div[4]/div/fieldset/div[6]/div/div/div/div[2]/div/div[2]/p/span[2]


