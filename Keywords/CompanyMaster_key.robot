*** Settings ***

Library    SeleniumLibrary
Library    DatabaseLibrary        
Resource    ../Testdata/CompanyMaster_data.robot
Resource    ../Locators/CompanyMaster_loc.robot
Resource    ../Locators/Common_loc.robot
Resource    ../Testdata/Common_data.robot

*** Keywords ***


Add Company in Company Master
    Set Window Size    1920    1080
    Sleep    ${minWait}
    Click Element    ${CompanyMaster_menu}
    Sleep    ${minWait}
    # Click Element    ${CM_addbutton}    
    # Input Text    ${CM_Companyname_loc}    ${CM_Companyname_data}    
    # Input Text    ${CM_contactname_loc}    ${CM_contactname_data}
    # Input Text    ${CM_MobNumber_loc}    ${CM_MobNumber_data}
    # Input Text    ${CM_PhoneNumber_loc}    ${CM_PhoneNumber_data}
    # Input Text    ${CM_Emailid_loc}    ${CM_Emailid_data}
    # Input Text    ${CM_Website_loc}    ${CM_Website_data}
       
    # Input Text    ${CM_Address1_loc}    ${CM_Address1_data} 
    # Input Text    ${CM_Address2_loc}    ${CM_Address2_data}  
    # Input Text    ${CM_Address3_loc}    ${CM_Address3_data}    
    # Input Text    ${CM_BillingAddress1_loc}    ${CM_BillingAddress1_data}    
    # Input Text    ${CM_BillingAddress2_loc}    ${CM_BillingAddress2_data}    
    # Input Text    ${CM_BillingAddress3_loc}    ${CM_BillingAddress3_data}
    # Execute Javascript    window.scrollBy(900,900)     
    # Sleep    ${minWait}   
    # Click Element    ${CM_SaveBn}    
    # Click Element    ${Okbutton}
    # Sleep    ${minWait}
    # Click Element    ${UM_backbutton_loc}        
    # Sleep    ${maxWait}
    Input Text    ${CM_CompanyNameInSearch_loc}    ${CM_CompanyNameInSearch_data}
    Sleep    ${minWait}
    Click Element    ${CM_SearchBn}    
    Sleep    ${maxWait}
    # Element Text Should Be    ${CM_CompanyNameInGrid_loc}    ${CM_CompanyNameInGrid_data} 
    # Sleep    ${minWait}
    Set Window Size    1920    1080
    Click Element    ${CM_ActionBn}
    # Set Window Size    1920    1080      
 
    Sleep    ${maxWait}        
    Click Element    ${CM_CompanyInfobn}    
    # Sleep    ${minWait}
    # # Close Window
    # Input Text    ${CM_ProjectName_loc}    ${CM_Project_data}
    # Click Element    ${CM_ProjectSavebn}    
    # Click Element    ${Okbutton}    
    # Element Text Should Be    ${CM_ProjectGrid}    ${CM_VerifyProjectName_data}    
    # Click Element    ${CM_ProjectGrid}    
    # Sleep    ${minWait}
    # Input Text    ${CM_SiteName_loc}    ${CM_Site_data}    
    # Click Element    ${CM_SiteSavebn}    
    # Click Element    ${Okbutton}    
    # Element Text Should Be    ${CM_SiteGrid}    ${CM_VerifySiteName_data}  
    # Sleep    ${minWait}
    # Click Element    ${UM_backbutton_loc}
    # Sleep    ${minWait}
    # Click Element    ${Logout1_loc}    
    # Sleep    ${minWait}
    # Click Element    ${Logout2_loc} 
    # Sleep    ${minWait}
    # Close Browser   
    
     