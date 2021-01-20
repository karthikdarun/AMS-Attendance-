*** Settings ***
Resource    ../Testdata/UserMaster_data.robot

*** Variables ***
${UserMaster_menu}    xpath://*[contains(text(),'User Master')]
${UM_addbutton}    xpath://*[@id='btnAddUser']
${UM_LoginName_loc}    xpath://*[@id='txtLoginName']
${UM_loginPass_loc}    xpath://*[@id='txtPassword']
${UM_loginFirstName_loc}    xpath://*[@id='txtFirstName']
${UM_LoginLastName_loc}    xpath://*[@id='txtLastName']
${UM_selectRole_loc}    xpath://*[@id='DdlUserRole']
${UM_EmailID_loc}    xpath://*[@id='txtUserEmailID']
${UM_Mobilenumber_loc}    xpath://*[@id='txtUserMobileNumber']
${UM_Language_loc}    xpath://*[@class='chosen-search-input default']
${UM_SelectLang_loc}    xpath://li[contains(text(),'${UM_Lang_data}')]
${UM_MaleGender_loc}    xpath://*[@id='RdlMaleGender']
${UM_FemaleGender_loc}    xpath://*[@id='RdlFemaleGender']
${UM_saveButton}    xpath://*[@id='btnSaveUser']

${UM_LoginNameInSearch_loc}    xpath://*[@id='txtsearchLoginName']
${UM_loginNameInGrid_loc}    xpath://*[@id='Usergrid']/tbody/tr/td[3]
${UM_searchbutton}    xpath://*[@id='btnUserSearch']

