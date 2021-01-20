*** Settings ***
Library    SeleniumLibrary   
Resource    ../Locators/Common_loc.robot
Resource    ../Testdata/Common_data.robot
Resource    ../Locators/RoleMaster_loc.robot
Resource    ../Testdata/RoleMaster_data.robot

*** Keywords ***
Add Role
    Click Element    ${RoleMaster_menu}    
    Sleep    ${minWait}
    Click Element    ${RM_addbutton}    
    Sleep    ${minWait}
    Input Text    ${RM_Rolename_loc}    ${RM_Rolename_data}
    Input Text    ${RM_Roledesc_loc}    ${RM_Roledesc_data}    
    Click Element    ${RM_Savebutton}    
    Click Element    ${Okbutton}
    Sleep    ${maxWait} 
    Click Element    ${UM_backbutton_loc} 
    Sleep    ${minWait}      
    Input Text    ${RM_RolenameInSearch_loc}    ${RM_RolenameInSearch_data}    
    Click Element    ${RM_searchbutton} 
    Sleep    ${maxWait}   
    Element Text Should Be    ${RM_RoleNameInGrid_loc}    ${RM_RoleNameInGrid_data} 
    Sleep    ${minWait}
    Click Element    ${Logout1_loc}    
    Sleep    ${minWait}
    Click Element    ${Logout2_loc} 
    Sleep    ${minWait}
    Close Browser          
 
