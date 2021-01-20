*** Settings ***
Resource    CompanyMaster_data.robot

*** Variables ***

${BD_CompanyName_data}    ${CM_Companyname_data}       
${BD_Project_data}    ${CM_Project_data}    
${BD_Site_data}    ${CM_Site_data}    
    
${BD_MonStartHrs_data}    9:00 AM    
${BD_TueStarthrs_data}    9:00 AM    
${BD_WedStartHrs_data}    9:00 AM    
${BD_ThuStartHrs_data}    9:00 AM    
${BD_FriStarHrs_data}    9:00 AM    
${BD_SatStarHrs_data}    9:00 AM    
${BD_SunStarHrs_data}    9:00 AM    
${BD_MonEndHrs_data}    6:00 PM    
${BD_TueEndHrs_data}    6:00 PM    
${BD_WedEndHrs_data}    6:00 PM    
${BD_ThuENdHrs_data}    6:00 PM    
${BD_FriEndHrs_data}    6:00 PM    
${BD_SatEndHrs_data}    6:00 PM    
${BD_SunEndHrs_data}    6:00 PM    
${BD_MonBreakHrs_data}    1.00    
${BD_TueBreakHrs_data}    1.00    
${BD_WedBreakHrs_data}    1.00    
${BD_ThuBreakHrs_data}    1.00    
${BD_FriBreakHrs_data}    1.00    
${BD_SatBreakHrs_data}    1.00    
${BD_SunBreakHrs_data}    1.00    
${BD_TotalHrs_data}    9
${BD_VerifyMonStart_data}    ${BD_MonStartHrs_data}      
${BD_VerifyMonEnd_data}    ${BD_MonEndHrs_data}  
${BD_VerifyTueStart_data}    ${BD_TueStarthrs_data}  
${BD_VerifyTueEnd_data}    ${BD_TueEndHrs_data}      
${BD_VerifyWedStart_data}    ${BD_WedStartHrs_data}      
${BD_VerifyWedEnd_data}    ${BD_WedEndHrs_data}  
${BD_VerifyThuStart_data}    ${BD_ThuStartHrs_data}  
${BD_VerifyThuEnd_data}    ${BD_ThuENdHrs_data}  
${BD_VerifyFriStart_data}    ${BD_FriStarHrs_data}  
${BD_VerifyFriEnd_data}    ${BD_FriEndHrs_data}  
${BD_VerifySatStart_data}    ${BD_SatStarHrs_data}      
${BD_VerifySatEnd_data}    ${BD_SatEndHrs_data}  
${BD_VerifySunStart_data}    ${BD_SunStarHrs_data}      
${BD_VerifySunEnd_data}    ${BD_SunEndHrs_data}      
  