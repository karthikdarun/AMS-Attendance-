*** Settings ***
Resource    ../Keywords/ExpensesDetail_key.robot
Resource    ../Keywords/General_keys.robot

*** Test Cases ***
Expenses detail
    Login As Admin
    Adding Expenses