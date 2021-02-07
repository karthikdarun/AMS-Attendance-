*** Settings ***
Resource    QuotationTemplate_data.robot
Resource    CompanyMaster_data.robot


*** Variables ***
   
${QD_quotationDate_data}    09-Jan-2020       
${QD_CompanyName_data}    ${CM_Companyname_data}    
${QD_PreparedBy_data}    Karthik TestUser    
${QD_quotationYearInSearch_data}    2021    
${QD_CompanyNameInSearch_data}    ${QD_CompanyName_data}        
${QD_quotationNumberInSearch_data}    QUO-JAN2021/0032    
${QD_QuotationNumberInGrid_data}    ${QD_quotationNumberInSearch_data}        
${QD_QuotationRevisionNumber_data}    QUO-JAN2021/0032-0        
${QD_quotationType_data}    Company    
${QD_TemplateName_data}    ${QT_name_data}    
${QD_NormalRateRange_data}    1    
${QD_NormalRate_data}    100    
${QD_OTRangeRate_data}    1.5    
${QD_OTRate_data}    10    
${QD_SHRateRange_data}    1    
${QD_SHRate_data}    66.66
${QD_VerifyApproveStatus_data}    Approved
${QD_day_data}    1
${QD_ContractType_data}    Daily Contract
      