*** Settings ***
Library    SeleniumLibrary 
Resource    ../Locators/Common_loc.robot
Resource    ../Testdata/Common_data.robot

*** Keywords ***

Login As Admin
    Sleep    ${maxWait}
    Open Browser    ${Appurl}    ${broswer}
    Set Browser Implicit Wait    ${BrowserWait}
    Maximize Browser Window
    Input Text    ${AdminUsername_loc}    ${AdminUsername_data}
    Input Password    ${AdminPassword_loc}    ${AdminPassword_data}    
    Click Element    ${LoginButton}        
