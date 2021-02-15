*** Settings ***
Library    SeleniumLibrary    
Resource    ../Locators/ExpensesDetail_loc.robot
Resource    ../Testdata/ExpensesDetail_data.robot
Resource    ../Testdata/Common_data.robot
Resource    ../Locators/Common_loc.robot

*** Keywords ***
Adding Expenses
    Click Element    ${ED_ExpensesDetailMenu}    
    Sleep    ${minWait}
    Select From List By Label    ${ED_ExpensesType_loc}    ${ED_ExpensesType_data}
    # Click Element    ${ED_date_loc} 
    Sleep    ${minWait}   
    # Click Element    xpath://*[@day='${ED_day_data}']
    Press Keys    ${ED_date_loc}    ENTER
    Sleep    ${minWait}
    Input Text    ${ED_amount_loc}    ${ED_amount_data}    
    Input Text    ${ED_Paidby_loc}    ${ED_Paidby_data}    
    Input Text    ${ED_Desc_loc}    ${ED_Desc_data}
    Click Element    ${ED_date_loc} 
    
    Wait Until Page Contains Element    ${ED_Savebn}    
    Click Element    ${ED_Savebn}    
    Sleep    ${minWait}
    Click Element    ${Okbutton}
    Sleep    ${minWait}
    
    # Click Element    ${ED_DateSearch_loc}  
    # Sleep    ${minWait}
    Press Keys    ${ED_DateSearch_loc}    ENTER       
    Sleep    ${minWait}
    # Click Element    xpath://*[@day='${ED_Gridday_data}'] 
    # Sleep    ${minWait}
    Select From List By Label    ${ED_SearchExpensesType_loc}    ${ED_SearchExpensesType_data}
    Input Text    ${ED_SearchPaidby_loc}    ${ED_SearchPaidby_data}    
    Click Element    ${ED_Searchbn}    
    Sleep    ${minWait}
      
    Element Text Should Be    ${ED_GridExpensesType_loc}    ${ED_GridExpensesType_data}    
    Element Text Should Be    ${ED_GridAmount_loc}    ${ED_GridAmount_data}
    Element Text Should Be    ${ED_GridPaidby_loc}    ${ED_GridPaidby_data}    
    Element Text Should Be    ${ED_GridDesc_loc}    ${ED_GridDesc_data}    
    Sleep    ${minWait}
    Click Element    ${Logout1_loc}    
    Sleep    ${minWait}
    Click Element    ${Logout2_loc}
    Sleep    ${minWait}
    Close Browser            
          
          