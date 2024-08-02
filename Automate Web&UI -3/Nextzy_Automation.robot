*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/Variables.robot
Resource    ${CURDIR}/Keyword.robot

*** Test Cases ***

TC-01
    Open Web Browser
    Verify Collapse 
    Close Browser

TC-02
    Open Web Browser
    Verify Default Menu
    Close Browser

TC-03
    Open Web Browser
    Verify Affiliated agencies
    Close Browser

TC-04
    Open Web Browser
    Verify VDO Content
    Close Browser

TC-05
    Open Web Browser
    Verify Performance
    Close Browser

TC-06
    Open Web Browser
    Verify Social Media 
    Close Browser
    
TC-07
    Open Web Browser
    Verify Warning Knowledge
    Close Browser        

TC-08
    Open Web Browser
    Verify Activity
    Close Browser

TC-09
    Open Web Browser
    Verify Contact
    Close Browser