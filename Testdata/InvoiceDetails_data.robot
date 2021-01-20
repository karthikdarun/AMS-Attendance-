*** Settings ***
Resource    CompanyMaster_data.robot
Resource    QuotationDetails_data.robot
Resource    EmployeeMaster_data.robot
Resource    ../Keywords/Quotation details_key.robot
*** Variables ***
${ID_InvoiceMonth_data}    Jan/2021    
${ID_InvoiceDate_data}    15    
${ID_CompanyName_data}    ${CM_Companyname_data}    
${ID_InvoiceQuotationNo_data}    QUO-JAN2021/0008   
${ID_Project_data}    ${CM_Project_data}    
${ID_Site_data}    ${CM_Site_data}   
${ID_PreparedBy_data}    karthik Test    
${ID_ContractType_data}    ${QD_ContractType_data}    
${ID_InvoiceRemarks_data}    January invoice    
        
${ID_SupplierCompanyName_data}    ${ID_CompanyName_data}    
${ID_SupplierInvoiceDate_data}    15-Jan-2021    
${ID_SupplierInvoiceRefNo_data}    123456    
${ID_SupplierInvoiceSubmittedBy_data}    Karthik    
${ID_SupplierInvoiceContractType_data}    Hourly Contract 

${ID_InvoiceYearInSearch_data}    2021    
${ID_CompanyNameInSearch_data}    ${ID_CompanyName_data} 
${ID_InvoiceNoInSearch_data}    INV-JAN2021/0032          
${ID_VerifyInvoiceNo_data}    ${ID_InvoiceNoInSearch_data}
              

@{ID_EmployeeName_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}        ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}
@{ID_CompanyAttendance_Day}    1    4    5    6    7    8    11    12    13    14    15    18    19    20    21    22    25    26    27    28    29    30 
@{ID_EmployeeSelection_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    ${EM_EmployeeNameInSearch_data}    
@{ID_VerifyEEName_data}    ${ID_EmployeeName_data}    ${ID_EmployeeName_data}    ${ID_EmployeeName_data}    ${ID_EmployeeName_data}    ${ID_EmployeeName_data}    ${ID_EmployeeName_data}    ${ID_EmployeeName_data}    ${ID_EmployeeName_data}    ${ID_EmployeeName_data}    ${ID_EmployeeName_data}    ${ID_EmployeeName_data}    ${ID_EmployeeName_data}    ${ID_EmployeeName_data}    ${ID_EmployeeName_data}    ${ID_EmployeeName_data}    ${ID_EmployeeName_data}    ${ID_EmployeeName_data}    ${ID_EmployeeName_data}    ${ID_EmployeeName_data}    ${IDEmployeeName_data}    ${ID_EmployeeName_data}    

${ID_SupplierEmployeeName_data}    ${EM_EmployeeNameInSearch_data}        
${ID_SupplierNormalRateRange_data}    1    
${ID_SupplierNormalrate_data}    20    
${ID_SupplierOTRateRange_data}    1.5    
${ID_SupplierOTRate_data}    20    
${ID_SupplierSHNormalRateRange_data}    2    
${ID_SupplierSH_NormalRate_data}    20    
${ID_SupplierEmployeeInSearch_data}    ${EM_EmployeeNameInSearch_data}        
${ID_SupplierNameInGrid_data}    ${EM_EmployeeNameInSearch_data}    
    