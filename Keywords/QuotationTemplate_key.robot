*** Settings ***
Library    SeleniumLibrary    
Resource    ../Locators/Common_loc.robot
Resource    ../Testdata/Common_data.robot
Resource    ../Locators/QuotationTemplate_loc.robot
Resource    ../Testdata/QuotationTemplate_data.robot

*** Keywords ***
Add Quotation Template
    Click Element    ${quotationTemplateMenu}    
    Sleep    ${minWait}
    Click Element    ${QT_addbn}    
    Sleep    ${minWait}
    Input Text    ${QT_name_loc}    ${QT_name_data}
    Input Text    ${QT_txtAttnHeader_loc}    ${QT_txtAttnHeader_data}    
    Input Text    ${QT_attendetail_loc}    ${QT_attendetail_data}
    Input Text    ${QT_RegHeader_loc}    ${QT_RegHeader_data}
    Input Text    ${QT_RegDetail_loc}    ${QT_RegDetail_data}
    Input Text    ${QT_QuoationFrom_loc}    ${QT_QuoationFrom_data}
    Input Text    ${QT_Quotationworker_loc}    ${QT_Quotationworker_data}    
    Input Text    ${QT_JobHeader_loc}    ${QT_JobHeader_data} 
    Input Text    ${QT_JobDetail_loc}    ${QT_JobDetail_data}
    Sleep    ${minWait}    
    Click Element    ${QT_AddJobGrid}    
    Sleep    ${minWait}   
    Input Text    ${QT_JobHeader_loc}    ${QT_JobHeader1_data}
    Input Text    ${QT_JobDetail_loc}    ${QT_JobDetail2_data}     
    Click Element    ${QT_AddJobGrid}    
    Sleep    ${minWait}   
    Input Text    ${QT_JobHeader_loc}    ${QT_JobHeader2_data}
    Input Text    ${QT_JobDetail_loc}    ${QT_JobDetail2_data}
    Click Element    ${QT_AddJobGrid}    
    Sleep    ${minWait} 
       
    Input Text    ${QT_JobHeader_loc}    ${QT_JobHeader3_data}
    Input Text    ${QT_JobDetail_loc}    ${QT_JobDetail3_data}        
    Click Element    ${QT_AddJobGrid}    
    Sleep    ${minWait}
    Execute Javascript    window.scrollBy(900,900)
    Sleep    ${minWait}    
    Input Text    ${QT_TermHeader_loc}    ${QT_TermHeader1_data}
    Input Text    ${QT_TermDetail_loc}    ${QT_TermDetail1_data}    
    Click Element    ${QT_AddTermbn}    
    Sleep    ${minWait}    
    Input Text    ${QT_TermHeader_loc}    ${QT_TermHeader2_data}
    Input Text    ${QT_TermDetail_loc}    ${QT_TermDetail2_data}    
    Click Element    ${QT_AddTermbn}    
    Sleep    ${minWait}     
    Input Text    ${QT_TermHeader_loc}    ${QT_TermHeader3_data}
    Input Text    ${QT_TermDetail_loc}    ${QT_TermDetail3_data}    
    Click Element    ${QT_AddTermbn}    
    Sleep    ${minWait} 
    Input Text    ${QT_Footer1_loc}    ${QT_Footer1_data}    
    Input Text    ${QT_Footer2_loc}    ${QT_Footer2_data}
    Input Text    ${QT_Footer3_loc}    ${QT_Footer3_data} 
    Execute Javascript    window.scrollBy(900,900)
    Sleep    ${minWait}   
    Input Text    ${QT_Footer4_loc}    ${QT_Footer4_data}    
    Input Text    ${QT_Footer5_loc}    ${QT_Footer5_data}    
    Click Element    ${QT_Savebn}
    Sleep    ${minWait}
    Click Element    ${Okbutton}    
    Sleep    ${maxWait}
    Click Element    ${UM_backbutton_loc}    
    Sleep    ${maxWait}
    Execute Javascript    window.scrollBy(-900,-900)
    Sleep    ${minWait}
    Input Text    ${QT_TemplateNameInSearch_loc}    ${QT_TemplateNameInSearch_data}
    Sleep    ${maxWait}    
    Click Element    ${QT_Searchbn}
    Sleep    ${minWait}
    Element Text Should Be    ${QT_TemplateNameInView_loc}    ${QT_TemplateNameInView_data} 
    Sleep    ${minWait}
    Click Element    ${Logout1_loc}    
    Sleep    ${minWait}
    Click Element    ${Logout2_loc} 
    Sleep    ${minWait}
    Close Browser                                      