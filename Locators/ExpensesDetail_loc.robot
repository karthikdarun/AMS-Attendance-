*** Variables ***
${ED_ExpensesDetailMenu}    xpath://*[contains(text(),' Expense Details')]
${ED_ExpensesType_loc}    xpath://*[@id='DdlExpensesType']
${ED_date_loc}    xpath://*[@id='TxtDate']/parent::div/span/button
${ED_amount_loc}    xpath://*[@id='TxtAmount']
${ED_Paidby_loc}    xpath://*[@id='TxtPaidby']
${ED_Desc_loc}    xpath://*[@id='TxtExpensesDescription']
${ED_Savebn}    xpath://*[@id='btnExpensesSave']
${ED_DateSearch_loc}    xpath://*[@id='TxtDateSearch']/parent::div/span/button
${ED_SearchExpensesType_loc}    xpath://*[@id='DdlExpensesTypeSearch']
${ED_SearchPaidby_loc}    xpath://*[@id='TxtPaidbySearch']
${ED_Searchbn}    xpath://*[@id='btnExpensesDetailSearch']

${ED_GridDate_loc}    xpath://*[@id='GridExpansesDetail']/tbody/tr/td
${ED_GridExpensesType_loc}    xpath://*[@id='GridExpansesDetail']/tbody/tr/td[2]
${ED_GridAmount_loc}    xpath://*[@id='GridExpansesDetail']/tbody/tr/td[3]
${ED_GridPaidby_loc}    xpath://*[@id='GridExpansesDetail']/tbody/tr/td[4]
${ED_GridDesc_loc}    xpath://*[@id='GridExpansesDetail']/tbody/tr/td[5]


