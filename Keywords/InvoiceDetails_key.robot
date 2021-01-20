*** Settings ***
Library    SeleniumLibrary 
Library    Collections       
Resource    ../Locators/Common_loc.robot
Resource    ../Testdata/Common_data.robot
Resource    ../Locators/InvoiceDetails_loc.robot
Resource    ../Testdata/InvoiceDetails_data.robot
Resource    Quotation details_key.robot
Resource    General_keys.robot

*** Keywords ***

Adding Invoice details
    
    Click Element    ${InvoiceDetails_menu}    
    Sleep    ${minWait}
    Click Element    ${ID_Addbn}    
    Sleep    ${maxWait}
    # Input Text    ${ID_InvoiceMonth_loc}    ${ID_InvoiceMonth_data}    
    # Input Text    ${ID_InvoiceDate_loc}    ${ID_InvoiceDate_data}
    ${InvoiceNumber}=    Get Value    ${ID_invoiceNumber_loc}
    Log To Console    ${InvoiceNumber}    
    Click Element    ${ID_Invoicemonthepickerbn}    
    Sleep    ${minWait}
    Click Element    ${ID_InvoicedateSelect_loc}    
    Sleep    ${minWait}
    Click Element    ${ID_InvoiceDatepickerbn}    
    Click Element    ${ID_InvoicedateSelect_loc}    
    Sleep    ${minWait}    
    Select From List By Label    ${ID_CompanyName_loc}    ${ID_CompanyName_data}
    Select From List By Label    ${ID_InvoiceQuotationNo_loc}    ${ID_InvoiceQuotationNo_data}
    Select From List By Label    ${ID_Project_loc}    ${ID_Project_data}
    Select From List By Label    ${ID_Site_loc}    ${ID_Site_data}
    Select From List By Label    ${ID_PreparedBy_loc}    ${ID_PreparedBy_data}
    Select From List By Label    ${ID_ContractType_loc}    ${ID_ContractType_data}
    Input Text    ${ID_InvoiceRemarks_loc}    ${ID_InvoiceRemarks_data}
    Select From List By Label    ${ID_SupplierCompanyName_loc}    ${ID_SupplierCompanyName_data}
    Input Text    ${ID_SupplierInvoiceDate_loc}    ${ID_SupplierInvoiceDate_data}    
    Input Text    ${ID_SupplierInvoiceRefNo_loc}    ${ID_SupplierInvoiceRefNo_data}    
    Input Text    ${ID_SupplierInvoiceSubmittedBy_loc}    ${ID_SupplierInvoiceSubmittedBy_data}    
    Select From List By Label    ${ID_SupplierInvoiceContractType_loc}    ${ID_SupplierInvoiceContractType_data}
    Click Element    ${ID_Savebn}    
    Click Element    ${Okbutton}    
    Sleep    ${minWait}
    
    Select From List By Label    ${ID_InvoiceYearInSearch_loc}    ${ID_InvoiceYearInSearch_data}
    Select From List By Label    ${ID_CompanyNameInSearch_loc}    ${ID_CompanyNameInSearch_data}
    Input Text    ${ID_InvoiceNoInSearch_loc}    ${InvoiceNumber}
    Click Element    ${ID_Searchbn}    
    Sleep    ${minWait}
    
    
    Click Element    ${ID_Actionbn}
    Sleep    ${minWait}
    Click Element    ${ID_Supplierattendancebn}
    Sleep    ${minWait}
    Select From List By Label    ${ID_SupplierEmployeeName_loc}    ${ID_SupplierEmployeeName_data}
    Input Text    ${ID_SupplierNormalRateRange_loc}    ${ID_SupplierNormalRateRange_data}    
    Input Text    ${ID_SupplierNormalrate_loc}    ${ID_SupplierNormalrate_data} 
    Sleep    ${minWait}   
    Input Text    ${ID_SupplierOTRateRange_loc}    ${ID_SupplierOTRateRange_data}    
    Input Text    ${ID_SupplierOTRate_loc}    ${ID_SupplierOTRate_data}
    Sleep    ${minWait}
    Input Text    ${ID_SupplierSHNormalRateRange_loc}    ${ID_SupplierSHNormalRateRange_data}    
    Input Text    ${ID_SupplierSH_NormalRate_loc}    ${ID_SupplierSH_NormalRate_data}
    Sleep    ${minWait}
    Click Element    ${ID_SupplierSaveBn}
    Click Element    ${Okbutton}    
    Select From List By Label    ${ID_SupplierEmployeeInSearch_loc}    ${ID_SupplierEmployeeInSearch_data}
    Click Element    ${ID_SupplierSearchBn}    
    Sleep    ${maxWait}
    Element Text Should Be    ${ID_SupplierNameInGrid_loc}    ${ID_SupplierNameInGrid_data}
    Sleep    ${minWait}
    Click Element    ${UM_backbutton_loc}
    Sleep    ${maxWait}
    
    Close Browser
    Login As Admin
    Sleep    ${minWait}
    
    
    Click Element    ${InvoiceDetails_menu}    
    Sleep    ${minWait}
    Select From List By Label    ${ID_InvoiceYearInSearch_loc}    ${ID_InvoiceYearInSearch_data}
    Select From List By Label    ${ID_CompanyNameInSearch_loc}    ${ID_CompanyNameInSearch_data}
    Input Text    ${ID_InvoiceNoInSearch_loc}    ${InvoiceNumber}
    Click Element    ${ID_Searchbn}    
    Sleep    ${minWait}
    Element Text Should Be    ${ID_VerifyInvoiceNo_loc}    ${InvoiceNumber}
    
    Sleep    ${minWait}
    Click Element    ${ID_Actionbn}
    Sleep    ${minWait}
    Click Element    ${ID_Companyattendancebn}    
    Sleep    ${minWait}
    FOR    ${i}    IN RANGE   0    5
    Sleep    ${minWait}
    Select From List By Label    ${ID_EmployeeInCompanyAttendance_loc}    ${ID_EmployeeName_data}[${i}]
    Sleep    ${minWait}
    Click Element    ${ID_CompanyDatepickerbn}
    Sleep    ${minWait}
    ${CompanyDayInvoice}=    Get From List    ${ID_CompanyAttendance_Day}    ${i}
    Click Element  xpath://*[@day='${CompanyDayInvoice}']
    Sleep    ${maxWait}   
    Click Element    ${ID_CompanyInvoiceAddbn}
    Sleep    ${minWait}    
    Click Element    ${Okbutton} 
    Sleep    ${minWait}
    Click Element    ${ID_clearbn}
    Sleep    ${minWait}    
    Select From List By Label    ${ID_CompanyEmployeeNameInView_loc}    ${ID_EmployeeName_data}[${i}]
    Sleep    ${minWait}
    Click Element    ${ID_CompanyattendanceSearchbn}    
    Sleep    ${minWait}
    Element Text Should Be    ${ID_VerifyEENameCompanyAttendance_loc}    ${ID_EmployeeName_data}[${i}]    
    Sleep    ${minWait} 
    END 
    Sleep    ${maxWait}
    Click Element    ${UM_backbutton_loc}
    Sleep    ${minWait}
    Click Element    ${Logout1_loc}    
    Sleep    ${minWait}
    Click Element    ${Logout2_loc} 
    Sleep    ${minWait}
    Close Browser                                  
    
                                   
    