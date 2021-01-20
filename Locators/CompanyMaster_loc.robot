*** Variables ***

${CM_addbutton}    xpath://*[@id='btnAddCompanyMaster']
${CM_Companyname_loc}    xpath://*[@id='TxtCompanyName']
${CM_contactname_loc}    xpath://*[@id='TxtContactPersonName']
${CM_MobNumber_loc}    xpath://*[@id='TxtMobileNo']
${CM_PhoneNumber_loc}    xpath://*[@id='TxtPhoneNo']
${CM_Emailid_loc}    xpath://*[@id='TxtEmailID']
${CM_Website_loc}    xpath://*[@id='TxtCompanyWebsite']
${CM_Address1_loc}    xpath://*[@id='TxtAddressLine1']
${CM_Address2_loc}    xpath://*[@id='TxtAddressLine2']
${CM_Address3_loc}    xpath://*[@id='TxtAddressLine3']  
${CM_BillingAddress1_loc}    xpath://*[@id='TxtBillingAddress1']    
${CM_BillingAddress2_loc}    xpath://*[@id='TxtBillingAddress2']    
${CM_BillingAddress3_loc}    xpath://*[@id='TxtBillingAddress3']    
${CM_SaveBn}    xpath://*[@id='btnCompanySave']
${CM_CloseButton}    xpath://*[@id='btnCloseCompany']
${CM_CompanyNameInSearch_loc}    xpath://*[@id='TxtSearchCompanyName']
${CM_CompanyNameInGrid_loc}    xpath://*[@id='Companygrid']/tbody/tr/td[2]
${CM_SearchBn}    xpath://*[@id='btnCompanySearch']
${CM_ActionBn}    xpath://*[@id='Companygrid']/tbody/tr/td[8]
${CM_CompanyInfobn}    xpath:(//*[contains(text(),'Company Info')])[2]
${CM_ProjectName_loc}    xpath://*[@id='TxtProjectName']
${CM_ProjectSavebn}    xpath://*[@id='btnProjectSave']
${CM_ProjectGrid}    xpath://*[@id='Projectgrid']/tbody/tr/td[2]
${CM_SiteName_loc}    xpath://*[@id='TxtSiteName']
${CM_SiteGrid}    xpath://*[@id='Sitegrid']/tbody/tr/td[3]
${CM_SiteSavebn}    xpath://*[@id='btnSiteSave']