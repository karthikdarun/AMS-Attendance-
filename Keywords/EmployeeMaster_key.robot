*** Settings ***
Library    SeleniumLibrary    
Resource    ../Locators/Common_loc.robot
Resource    ../Locators/EmployeeMaster_loc.robot
Resource    ../Testdata/Common_data.robot
Resource    ../Testdata/EmployeeMaster_data.robot

*** Keywords ***
Add Employee
    Click Element    ${EmployeeMasterMenu}
    Sleep    ${minWait}
    Click Element    ${EM_addbn}     
    Input Text    ${EM_firstname_loc}    ${EM_firstname_data}    
    Input Text    ${EM_lastname_loc}    ${EM_lastname_data}    
    Input Text    ${EM_DOB_loc}    ${EM_DOB_data} 
    Select From List By Label    ${EM_Nationality_loc}    ${EM_Nationality_data} 
    Select From List By Label    ${EM_EmployType_loc}    ${EM_EmployType_data}  
    Input Text    ${EM_Email_loc}    ${EM_Email_data}
    Input Text    ${EM_mobnumber_loc}    ${EM_mobnumber_data}
    Input Text    ${EM_SecondaryMob_loc}    ${EM_SecondaryMob_data}    
    Input Text    ${EM_SecondaryEmail_loc}    ${EM_SecondaryEmail_data}    
    Input Text    ${EM_ContactAddress1_loc}    ${EM_ContactAddress1_data}
    Input Text    ${EM_ContactAddress2_loc}    ${EM_ContactAddress2_data}    
    Input Text    ${EM_ContactAddress3_loc}    ${EM_ContactAddress3_data}    
    Input Text    ${EM_HomeAddress1_loc}    ${EM_HomeAddress1_data}    
    Input Text    ${EM_HomeAddress2_loc}    ${EM_HomeAddress2_data}    
    Input Text    ${EM_HomeAddress3_loc}    ${EM_HomeAddress3_data}             
    Click Element    ${EM_Male_loc}    
    Input Text    ${EM_ContactPersonName_loc}    ${EM_ContactPersonName_data}
    Input Text    ${EM_ContactPersonMob_loc}    ${EM_ContactPersonMob_data}    
    Input Text    ${EM_ContactPersonEmail_loc}    ${EM_ContactPersonEmail_data}
    Execute Javascript    window.scrollBy(900, 900) 
    Sleep    ${minWait}   
    Input Text    ${EM_ContactPersonAddress1_loc}    ${EM_ContactPersonAddress1_data}
    Input Text    ${EM_ContactPersonAddress2_loc}    ${EM_ContactPersonAddress2_data}    
    Input Text    ${EM_ContactPersonAddress3_loc}    ${EM_ContactPersonAddress3_data}
    Click Element    ${EM_savebn}
    Sleep    ${maxWait}  
    Click Element    ${Okbutton}    
    Sleep    ${maxWait}
    Click Element    ${UM_backbutton_loc} 
    Sleep    ${minWait}
    Input Text    ${EM_EmployeeNameInSearch_loc}    ${EM_EmployeeNameInSearch_data}    
    Click Element    ${EM_Searchbn}    
    Sleep    ${minWait}
    Click Element    ${EM_AdditionalInfo}    
    Sleep    ${minWait}
    Click Element    ${EM_SalaryInfobn}    
    Sleep    ${minWait}   
        
    Select From List By Label    ${EM_ContractType_loc}    ${EM_HourlyContractType_data}                
    Input Text    ${EM_NormalRateRange_loc}    ${EM_HourlyNormalRateRange_data}    
    Input Text    ${EM_NormalRate_loc}    ${EM_HourlyNormalRate_data}    
    Input Text    ${EM_OTRange_loc}    ${EM_HourlyOTRange_data}
    Input Text    ${EM_OTRate_loc}    ${EM_HourlyOTRate_data}    
    Input Text    ${EM_PH/SHRange_loc}    ${EM_HourlyPH/SHRange_data}
    Input Text    ${EM_PH/SHRate_loc}    ${EM_HourlyPH/SHRate_data}
    
    Click Element    ${EM_Salalrysavebn}    
    Sleep    ${minWait}
    Click Element    ${Okbutton}
    Sleep    ${maxWait}
    
    Select From List By Label    ${EM_ContractType_loc}    ${EM_DailyContractType_data}                
    Input Text    ${EM_NormalRateRange_loc}    ${EM_DailyNormalRateRange_data}    
    Input Text    ${EM_NormalRate_loc}    ${EM_DailyNormalRate_data}    
    Input Text    ${EM_OTRange_loc}    ${EM_DailyOTRange_data}
    Input Text    ${EM_OTRate_loc}    ${EM_DailyOTRate_data}    
    Input Text    ${EM_PH/SHRange_loc}    ${EM_DailyPH/SHRange_data}
    Input Text    ${EM_PH/SHRate_loc}    ${EM_DailyPH/SHRate_data}
    
    Click Element    ${EM_Salalrysavebn}    
    Sleep    ${minWait}
    Click Element    ${Okbutton}
    Sleep    ${minWait}
    
    Select From List By Label    ${EM_ContractType_loc}    ${EM_MonthlyContractType_data}                
    Input Text    ${EM_NormalRateRange_loc}    ${EM_MonthlyNormalRateRange_data}    
    Input Text    ${EM_NormalRate_loc}    ${EM_MonthlyNormalRate_data}    
    Input Text    ${EM_OTRange_loc}    ${EM_MonthlyOTRange_data}
    Input Text    ${EM_OTRate_loc}    ${EM_MonthlyOTRate_data}    
    Input Text    ${EM_PH/SHRange_loc}    ${EM_MonthlyPH/SHRange_data}
    Input Text    ${EM_PH/SHRate_loc}    ${EM_MonthlyPH/SHRate_data}
    
    Click Element    ${EM_Salalrysavebn}    
    Sleep    ${minWait}
    Click Element    ${Okbutton}    
    Sleep    ${maxWait}
       
    Click Element    ${UM_backbutton_loc}    
    Sleep    ${minWait}
    
    Input Text    ${EM_EmployeeNameInSearch_loc}    ${EM_EmployeeNameInSearch_data}    
    Click Element    ${EM_Searchbn}    
    Sleep    ${minWait}
    Element Text Should Be    ${EM_EmployeeNameInGrid_loc}    ${EM_EmployeeNameInGrid_data}  
    
    Sleep    ${minWait}
    Click Element    ${EM_AdditionalInfo}  
    Sleep    ${minWait}
    Click Element    ${EM_AdditionalInfobn}    
    Sleep    ${minWait}
    Input Text    ${EM_PassportNumber_loc}    ${EM_PassportNumber_data}
    Input Text    ${EM_PassportName_loc}    ${EM_PassportName_data}    
    Input Text    ${EM_CountryIssue_loc}    ${EM_CountryIssue_data}    
    Input Text    ${EM_PlaceOfIssue_loc}    ${EM_PlaceOfIssue_data}
    Input Text    ${EM_DOI_loc}    ${EM_DOI_data}
    Input Text    ${EM_DOE_loc}    ${EM_DOE_data}    
    Input Text    ${EM_PassportAddress_loc}    ${EM_PassportAddress_data}    
    Click Element    ${EM_PassportSave}
    Sleep    ${maxWait}    
    Click Element   ${Okbutton}
    Sleep    ${maxWait}
    Element Text Should Be    ${EM_VerifyPassportNumber_loc}    ${EM_VerifyPassportNumber_data}    
    Sleep    ${minWait}
    
    Click Element    ${EM_WorkDetailsTab}    
    Sleep    ${minWait}
    Select From List By Label    ${EM_PassType_loc}    ${EM_PassType_data}
    Input Text    ${EM_PassFINNumber_loc}    ${EM_PassFINNumber_data}    
    Input Text    ${EM_WorkPassNumber_loc}    ${EM_WorkPassNumber_data}    
    Input Text    ${EM_PassDOI_loc}    ${EM_PassDOI_data}    
    Input Text    ${EM_PassDOE_loc}    ${EM_PassDOE_data} 
    Click Element    ${EM_WorkPassSave}    
    Click Element    ${Okbutton}    
    Sleep    ${maxWait} 
    Element Text Should Be    ${EM_VerifyworkPassdetails_loc}    ${EM_VerifyworkPassdetails_data}
    Sleep    ${minWait}
    
    Click Element    ${EM_CoursedetailsTab}
    Sleep    ${minWait}
    Input Text    ${EM_CourseName_loc}    ${EM_CourseName_data}   
    Input Text    ${EM_CourseCountryOfIssue_loc}    ${EM_CourseCountryOfIssue_data}
    Input Text    ${EM_CoursePlaceOfIssue_loc}    ${EM_CoursePlaceOfIssue_data}    
    Input Text    ${EM_CourseDOI_loc}    ${EM_CourseDOI_data}    
    Input Text    ${EM_CourseDOE_loc}    ${EM_CourseDOE_data}
    Sleep    ${minWait}    
    Click Element    ${EM_CourseSave}
    Sleep    ${minWait}    
    Click Element    ${Okbutton}    
    Sleep    ${maxWait}
    Element Text Should Be    ${EM_VerifyCourseName_loc}    ${EM_VerifyCourseName_data}
    Sleep    ${minWait}
    Click Element    ${UM_backbutton_loc}
    Sleep    ${minWait}
    Click Element    ${Logout1_loc}    
    Sleep    ${minWait}
    Click Element    ${Logout2_loc} 
    Sleep    ${minWait}
    Close Browser                      
    
    

    
                                       