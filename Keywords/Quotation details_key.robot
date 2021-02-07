*** Settings ***
Library    SeleniumLibrary
Library    DatabaseLibrary        
Resource    ../Locators/Common_loc.robot
Resource    ../Testdata/Common_data.robot
Resource    ../Testdata/QuotationDetails_data.robot
Resource    ../Locators/QuotationDetails_loc.robot

  

*** Keywords ***
Adding quotation details
   Click Element    ${QD_QuotationDetails_menu}
   Sleep    ${minWait}
   Click Element    ${QD_Addbn}  
   Sleep    ${maxWait} 
   
   Sleep    ${minWait}
   ${GetQuotationNo}=    Get Value    ${QD_QuotationNo_loc}
   Log To Console    ${GetQuotationNo}
   Sleep     ${minWait}
   ${QD_QuotationRevisionNo}=    Catenate    SEPARATOR=-    ${GetQuotationNo}    0
   Sleep    ${minWait}
   Log To Console    ${QD_QuotationRevisionNo}  
   
   Click Element    ${QD_datepickerbn_loc}  
   Sleep    ${minWait}
   Click Element    ${QD_day_loc}   
   Sleep    ${minWait}       
   Select From List By Label    ${QD_QuotationType_loc}    ${QD_quotationType_data}
   Select From List By Label    ${QD_CompanyName_loc}    ${QD_CompanyName_data}    
   Select From List By Label    ${QD_PreparedBy_loc}    ${QD_PreparedBy_data}
   Execute Javascript    scrollBy(900,900)
   Click Element    ${QD_Savebn}
   Click Element    ${Okbutton}    
   Sleep    ${minWait}
   
   
   Select From List By Label    ${QD_quotationYearInSearch_loc}    ${QD_quotationYearInSearch_data}
   Select From List By Label    ${QD_CompanyNameInSearch_loc}    ${QD_CompanyNameInSearch_data}
   Input Text    ${QD_quotationNumberInSearch_loc}    ${GetQuotationNo}    
   Click Element    ${QD_Searchbn}    
   Sleep    ${minWait}
   Click Element    ${QD_Actionbn} 
   Sleep    ${minWait}   
   Click Element    ${QD_Additionalinfo} 
   Sleep    ${minWait}
   
    
      
   Select From List By Label    ${QD_QuotationRevisionNumber_loc}    ${QD_QuotationRevisionNo}
   Sleep    ${maxWait}
   # Select From List By Label    ${QD_quotationType_loc}    ${QD_quotationType_data}
   Select From List By Label    ${QD_TemplateName_loc}    ${QD_TemplateName_data}
   Sleep    ${maxWait}
   Select From List By Label    ${QD_ContractType_loc}    ${QD_ContractType_data} 
   Sleep    ${maxWait}               
   Input Text    ${QD_NormalRateRange_loc}    ${QD_NormalRateRange_data}    
   Input Text    ${QD_NormalRate_loc}    ${QD_NormalRate_data}
   Sleep    ${minWait} 
   Click Element    ${QD_NormalAmount}       
   Input Text    ${QD_OTRangeRate_loc}    ${QD_OTRangeRate_data}    
   Input Text    ${QD_OTRate_loc}    ${QD_OTRate_data}
   Sleep    ${minWait} 
   Click Element    ${QD_OTAmount}
      
   Input Text    ${QD_SHRateRange_loc}    ${QD_SHRateRange_data}    
   Input Text    ${QD_SHRate_loc}    ${QD_SHRate_data} 
   Sleep    ${minWait}
   Click Element    ${QD_SHAmount} 
   Sleep    ${minWait}      
   Click Element    ${QD_AdditionalinfoSaveBn}
   Sleep    ${minWait}    
   Click Element    ${Okbutton}    
   Sleep    ${minWait}
   Select From List By Label    ${QD_quotationYearInSearch_loc}    ${QD_quotationYearInSearch_data}
   Select From List By Label    ${QD_CompanyNameInSearch_loc}    ${QD_CompanyNameInSearch_data}
   Input Text    ${QD_quotationNumberInSearch_loc}    ${GetQuotationNo}
   Click Element    ${QD_Searchbn}    
   Sleep    ${minWait}
   Click Element    ${QD_Actionbn}
   Sleep    ${minWait} 
   Click Element    ${QD_Approvebn}
   Click Element    ${Okbutton}        
   Sleep    ${maxWait}
   Element Text Should Be    ${QD_VerifyApproveStatus_loc}    ${QD_VerifyApproveStatus_data}
   Sleep    ${minWait}
   Click Element    ${Logout1_loc}    
   Sleep    ${minWait}
   Click Element    ${Logout2_loc} 
   Sleep    ${minWait}
   Close Browser 
   
      
         
   
                  