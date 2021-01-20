*** Settings ***
Library    SeleniumLibrary    
Resource    ../Locators/Common_loc.robot
Resource    ../Testdata/Common_data.robot
Resource    ../Locators/BusinessDays_loc.robot
Resource    ../Testdata/BusinessDays_data.robot

*** Keywords ***
Adding records in business days
    Click Element    ${BD_BusinessdaysMenu}
    Sleep    ${minWait}
    Select From List By Label    ${BD_CompanyName_loc}    ${BD_CompanyName_data}
    Select From List By Label    ${BD_Project_loc}    ${BD_Project_data}
    Select From List By Label    ${BD_Site_loc}    ${BD_Site_data}
    Click Element    ${BD_Searchbn}
    Sleep    ${minWait}
    
   
    # Log To Console    ${starthrs}    
    Input Text    ${BD_MonStartHrs_loc}    ${BD_MonStartHrs_data}
    Sleep    ${minWait}    
    Input Text    ${BD_MonEndHrs_loc}    ${BD_MonEndHrs_data} 
    Sleep    ${minWait}   
    Input Text    ${BD_MonBreakHrs_loc}    ${BD_MonBreakHrs_data} 
    Sleep    ${minWait}   
    Input Text    ${BD_TueStarthrs_loc}    ${BD_TueStarthrs_data}
    Sleep    ${minWait}    
    Input Text    ${BD_TueEndHrs_loc}    ${BD_TueEndHrs_data} 
    Sleep    ${minWait}   
    Input Text    ${BD_TueBreakHrs_loc}    ${BD_TueBreakHrs_data}
    Sleep    ${minWait}    
    Input Text    ${BD_WedStartHrs_loc}    ${BD_WedStartHrs_data}
    Sleep    ${minWait}    
    Input Text    ${BD_WedEndHrs_loc}    ${BD_WedEndHrs_data}
    Sleep    ${minWait}    
    Input Text    ${BD_WedBreakHrs_loc}    ${BD_WedBreakHrs_data}
    Sleep    ${minWait}    
    Input Text    ${BD_ThuStartHrs_loc}    ${BD_ThuStartHrs_data} 
    Sleep    ${minWait}   
    Input Text    ${BD_ThuENdHrs_loc}    ${BD_ThuENdHrs_data}
    Sleep    ${minWait}
    Execute Javascript   window.scrollBy(900,900)
    Sleep    ${minWait}    
    Input Text    ${BD_ThuBreakHrs_loc}    ${BD_ThuBreakHrs_data}
    Sleep    ${minWait}    
    Input Text    ${BD_FriStarHrs_loc}    ${BD_FriStarHrs_data} 
    Sleep    ${minWait}   
    Input Text    ${BD_FriEndHrs_loc}    ${BD_FriEndHrs_data} 
    Sleep    ${minWait}   
    Input Text    ${BD_FriBreakHrs_loc}    ${BD_FriBreakHrs_data} 
    Sleep    ${minWait}   
    Input Text    ${BD_SatStarHrs_loc}    ${BD_SatStarHrs_data} 
    Sleep    ${minWait}   
    Input Text    ${BD_SatEndHrs_loc}    ${BD_SatEndHrs_data}
    Sleep    ${minWait}    
    Input Text    ${BD_SatBreakHrs_loc}    ${BD_SatBreakHrs_data} 
    Sleep    ${minWait}   
    Input Text    ${BD_SunStarHrs_loc}    ${BD_SunStarHrs_data} 
    Sleep    ${minWait}   
    Input Text    ${BD_SunEndHrs_loc}    ${BD_SunEndHrs_data} 
    Sleep    ${minWait}   
    Input Text    ${BD_SunBreakHrs_loc}    ${BD_SunBreakHrs_data}
    Sleep    ${minWait}
    Click Element    ${BD_Updatebn}
    Sleep    ${minWait} 
    Click Element    ${Okbutton}  
    Sleep    ${maxWait}
    ${BD_MonStartValue}=    Get Value    ${BD_MonStartHrs_loc}
    Log To Console    ${BD_MonStartValue}    
    ${BD_MonendValue}=    Get Value    ${BD_MonEndHrs_loc}
    ${BD_TueStartValue}=    Get Value    ${BD_TueStarthrs_loc}
    ${BD_TueEndValue}=    Get Value    ${BD_TueEndHrs_loc}
    ${BD_WedStartValue}=    Get Value    ${BD_WedStartHrs_loc}
    ${BD_WedEndValue}=    Get Value    ${BD_WedEndHrs_loc}
    ${BD_ThuStartValue}=    Get Value    ${BD_ThuStartHrs_loc}
    ${BD_ThuEndValue}=    Get Value    ${BD_ThuENdHrs_loc}
    ${BD_FriStartValue}=    Get Value    ${BD_FriStarHrs_loc}
    ${BD_FriENdValue}=    Get Value    ${BD_FriEndHrs_loc}
    ${BD_SatStartValue}=    Get Value    ${BD_SatStarHrs_loc}
    ${BD_SatEndValue}=    Get Value    ${BD_SatEndHrs_loc}
    ${BD_SunStartValue}=    Get Value    ${BD_SunStarHrs_loc}
    ${BD_SunENdValue}=    Get Value    ${BD_SunEndHrs_loc}
    Sleep    ${maxWait}     
    Should Be Equal    ${BD_MonStartValue}    ${BD_VerifyMonStart_data} 
    Sleep    ${minWait}
    Should Be Equal    ${BD_MonendValue}    ${BD_VerifyMonEnd_data}
    Sleep    ${maxWait}
    Should Be Equal    ${BD_TueStartValue}    ${BD_VerifyTueStart_data}
    Sleep    ${minWait}
    Should Be Equal    ${BD_TueEndValue}    ${BD_VerifyTueEnd_data}
    Sleep    ${minWait}
    Should Be Equal    ${BD_WedStartValue}    ${BD_VerifyWedStart_data}
    Sleep    ${minWait}
    Should Be Equal    ${BD_WedEndValue}    ${BD_VerifyWedEnd_data}
    Sleep    ${minWait}
    Should Be Equal    ${BD_ThuStartValue}    ${BD_VerifyThuStart_data}
    Sleep    ${minWait}
    Should Be Equal    ${BD_ThuEndValue}    ${BD_VerifyThuEnd_data}
    Sleep    ${minWait}
    Should Be Equal    ${BD_FriStartValue}    ${BD_VerifyFriStart_data}
    Sleep    ${minWait}
    Should Be Equal    ${BD_FriENdValue}    ${BD_VerifyFriEnd_data}
    Sleep    ${minWait}
    Should Be Equal    ${BD_SatStartValue}    ${BD_VerifySatStart_data}
    Sleep    ${minWait}
    Should Be Equal    ${BD_SatEndValue}    ${BD_VerifySatEnd_data}
    Sleep    ${minWait}
    Should Be Equal    ${BD_SunStartValue}    ${BD_VerifySunStart_data}
    Sleep    ${minWait}
    Should Be Equal    ${BD_SunENdValue}    ${BD_VerifySunEnd_data}
    Sleep    ${minWait}
    Click Element    ${Logout1_loc}    
    Sleep    ${minWait}
    Click Element    ${Logout2_loc} 
    Sleep    ${minWait}
    Close Browser
           
        