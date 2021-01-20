*** Settings ***
Resource    ../Testdata/InvoiceDetails_data.robot

*** Variables ***
${InvoiceDetails_menu}    xpath://*[contains(text(),' Invoice Details')]
${ID_Addbn}    xpath://*[@id='btnAddInvoice']
${ID_invoiceNumber_loc}    xpath://*[@id='TxtInvoiceNo']
${ID_InvoiceMonth_loc}    xpath://*[@id='TxtInvoicMonth']
${ID_InvoiceDate_loc}    xpath://*[@id='TxtInvoiceDate']
${ID_CompanyName_loc}    xpath://*[@id='DdlInvoiceCompany']
${ID_InvoiceQuotationNo_loc}    xpath://*[@id='DdlInvoiceQuotationNo']
${ID_Project_loc}    xpath://*[@id='DdlProject']
${ID_Site_loc}    xpath://*[@id='DdlSite']
${ID_PreparedBy_loc}    xpath://*[@id='DdlPreparedBy']
${ID_ContractType_loc}    xpath://*[@id='DdlCompanyContractType']
${ID_InvoiceRemarks_loc}    xpath://*[@id='TxtInvoiceRemark']
${ID_InvoiceDesc_loc}    xpath://*[@id='TxtInvoiceDescription']
${ID_SupplierCompanyName_loc}    xpath://*[@id='DdlSupplierInvoiceCompany']
${ID_SupplierInvoiceDate_loc}    xpath://*[@id='TxtSupplierInvoiceDate']
${ID_SupplierInvoiceRefNo_loc}    xpath://*[@id='TxtSupplierInvoiceRefNumber']
${ID_SupplierInvoiceSubmittedBy_loc}    xpath://*[@id='TxtInvoiceSubmittedBy']
${ID_SupplierInvoiceContractType_loc}    xpath://*[@id='DdlSupplierContractType']
${ID_Savebn}    xpath://*[@id='btnSaveInvoice']
${ID_InvoiceYearInSearch_loc}    xpath://*[@id='DdlInvoiceYear']
${ID_CompanyNameInSearch_loc}    xpath://*[@id='DdlInvoiceCompany']
${ID_InvoiceNoInSearch_loc}    xpath://*[@id='TxtSearchInvoiceNo']
${ID_Searchbn}    xpath://*[@id='btnInvoiceSearch']
${ID_VerifyInvoiceNo_loc}    xpath://*[@id='Invoicegrid']/tbody/tr/td[3]
${ID_Invoicemonthepickerbn}    xpath://*[@id='TxtInvoicMonth']/parent::div/span/button
${ID_InvoiceDatepickerbn}    xpath://*[@id='TxtInvoiceDate']/parent::div/span/button
${ID_InvoicedateSelect_loc}    xpath://*[@day='${ID_InvoiceDate_data}']

${ID_Actionbn}    xpath://*[@id='Invoicegrid']/tbody/tr/td[8]
${ID_EmployeeInCompanyAttendance_loc}    xpath://*[@id='DdlEmployeeName']
${ID_Companyattendancebn}    xpath:(//*[contains(text(),'Company Attendance')])[2]
${ID_CompanyEmployeeNameInView_loc}    xpath://*[@id='DdlEmployeeNameSearch']
${ID_CompanyDatepickerbn}    xpath://*[@id='TxtDate']/parent::div/span/button
${ID_CompanyAttendanceDay_loc}    xpath://*[@day='@{ID_CompanyAttendance_Day}']
${ID_CompanyInvoiceAddbn}    xpath://*[@id='btnInvoiceAttendenceSave']
${ID_EmployeeSelection_loc}    xpath://*[@id='DdlEmployeeNameSearch']
${ID_CompanyattendanceSearchbn}    xpath://*[@id='btnInvoiceDetailSearch']
${ID_VerifyEENameCompanyAttendance_loc}    xpath://*[starts-with(@id,'GrdInvoice')]/tbody/tr/td[2]

${ID_Supplierattendancebn}    xpath:(//*[contains(text(),'Supplier Attendance')])[2]
${ID_SupplierEmployeeName_loc}    xpath://*[@id='DdlEmployeeName']
${ID_SupplierNormalRateRange_loc}     xpath://*[@id='TxtNRRateRange']
${ID_SupplierNormalrate_loc}    xpath://*[@id='TxtNormalRate']
${ID_SupplierOTRateRange_loc}    xpath://*[@id='TxtOTRateRange']
${ID_SupplierOTRate_loc}    xpath://*[@id='TxtOverTimeRate']
${ID_SupplierSHNormalRateRange_loc}    xpath://*[@id='TxtPHRateRange']
${ID_SupplierSH_NormalRate_loc}    xpath://*[@id='TxtSundayPublicHoliday']
${ID_SupplierSaveBn}    xpath://*[@id='btnInvoiceAttendenceSave']
${ID_SupplierEmployeeInSearch_loc}    xpath://*[@id='DdlEmployeeNameSearch']
${ID_SupplierSearchBn}    xpath://*[@id='btnInvoiceDetailSearch']
${ID_SupplierNameInGrid_loc}    xpath://*[@id='GrdSupplierInvoiceAttendence']/tbody/tr/td[1]
${ID_clearbn}    xpath://*[@id='btnInvoiceDetailClear']


