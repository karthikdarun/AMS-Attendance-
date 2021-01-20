*** Settings ***
Resource    ../Testdata/QuotationDetails_data.robot

*** Variables ***
${QD_QuotationDetails_menu}    xpath://*[contains(text(),'Quotation Details')]
${QD_Addbn}    xpath://*[@id='btnAddQuotationHeader']
${QD_QuotationNo_loc}    xpath://*[@id='TxtQuotationNo']
${QD_datepickerbn_loc}    xpath://*[@id='TxtQuotationDate']/parent::div/span/button
${QD_day_loc}    xpath://*[@day='${QD_day_data}']
${QD_CompanyName_loc}    xpath://*[@id='DdlCompanyName']
${QD_PreparedBy_loc}    xpath://*[@id='DdlPreparedBy']
${QD_Savebn}    xpath://*[@id='btnQuotationHeaderSave']
${QD_quotationYearInSearch_loc}    xpath://*[@id='DdlQuotationYear']
${QD_CompanyNameInSearch_loc}    xpath://*[@id='DdlCompanyName']
${QD_Searchbn}    xpath://*[@id='btnQuotationHeaderSearch']
${QD_quotationNumberInSearch_loc}    xpath://*[@id='TxtSearchQuotationNo']
${QD_QuotationNumberInGrid_loc}    xpath://*[@id='Quotationgrid']/tbody/tr/td[3]
${QD_Actionbn}    xpath://*[@id='Quotationgrid']/tbody/tr/td[11]
${QD_Additionalinfo}    xpath:(//*[contains(text(),'Additional Info')])[2]
${QD_Approvebn}    xpath:(//*[contains(text(),'Approval Update')])[2]
${QD_QuotationRevisionNumber_loc}    xpath://*[@id='DdlRevisionNumber']
# ${QD_quotationType_loc}    xpath://*[@id='DdlQuotationType']
${QD_TemplateName_loc}    xpath://*[@id='DdlTemplates']
${QD_AdditionalinfoSaveBn}    xpath://*[@id='btnSaveQuotationDetail']
${QD_NormalRateRange_loc}    xpath://*[@id='TxtNRRateRange']
${QD_NormalRate_loc}    xpath://*[@id='TxtNormalRate']
${QD_NormalAmount}    xpath://*[@id='TxtNRAmount']
${QD_OTRangeRate_loc}    xpath://*[@id='TxtOTRateRange']
${QD_OTRate_loc}    xpath://*[@id='TxtOverTimeRate']
${QD_OTAmount}    xpath://*[@id='TxtOTAmount']
${QD_SHRateRange_loc}    xpath://*[@id='TxtPHRateRange']
${QD_SHRate_loc}    xpath://*[@id="TxtSundayPublicHoliday"]
${QD_SHAmount}    xpath://*[@id='TxtPHAmount']
${QD_VerifyApproveStatus_loc}    xpath://*[@id='Quotationgrid']/tbody/tr/td[9] 
${QD_QuotationType_loc}    xpath://*[@id='DdlQuotationType']
${QD_ContractType_loc}    xpath://*[@id='DdlCompanyContractType']

 