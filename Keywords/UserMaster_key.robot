*** Settings ***
Library    SeleniumLibrary    
Resource    ../Testdata/Common_data.robot
Resource    ../Locators/Common_loc.robot
Resource    ../Testdata/UserMaster_data.robot
Resource    ../Locators/UserMaster_loc.robot

*** Keywords ***
Add user
    Click Element    ${UserMaster_menu}
    Sleep    ${minWait}    
    Click Element    ${UM_addbutton}    
    Sleep    ${minWait}    
    Input Text    ${UM_LoginName_loc}    ${UM_LoginName_data}    
    Input Text    ${UM_loginPass_loc}    ${UM_loginPass_data}
    Input Text    ${UM_loginFirstName_loc}    ${UM_loginFirstName_data}
    Input Text    ${UM_LoginLastName_loc}    ${UM_LoginLastName_data}    
    Select From List By Label    ${UM_selectRole_loc}    ${UM_selectRole_data}
    Input Text    ${UM_EmailID_loc}    ${UM_EmailID_data}    
    Input Text    ${UM_Mobilenumber_loc}    ${UM_Mobilenumber_data}    
    Click Element    ${UM_Language_loc}  
    Sleep    ${minWait}  
    Mouse Down    ${UM_SelectLang_loc}
    Click Element    ${UM_SelectLang_loc}    
    Click Element    ${UM_MaleGender_loc}
    Execute Javascript    window.scrollBy(900,900)
    Sleep    ${minWait} 
    Click Element    ${UM_saveButton}
    Sleep    ${minWait}
    Click Element    ${Okbutton} 
    Sleep    ${maxWait}
    Click Element    ${UM_backbutton_loc}
    Sleep    ${minWait}    
    Input Text    ${UM_LoginNameInSearch_loc}    ${UM_LoginNameInSearch_data}
    Sleep    ${minWait}
    Click Element    ${UM_searchbutton}    
    Sleep    ${maxWait}
    Table Column Should Contain    ${UM_loginNameInGrid_loc}    3    ${UM_loginNameInGrid_data}    
    # Element Text Should Be    ${UM_loginNameInGrid_loc}    ${UM_loginNameInGrid_data}
    Sleep    ${minWait}
    Click Element    ${Logout1_loc}    
    Sleep    ${minWait}
    Click Element    ${Logout2_loc} 
    Sleep    ${minWait}
    Close Browser                
              