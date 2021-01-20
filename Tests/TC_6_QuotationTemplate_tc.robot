*** Settings ***
Resource    ../Keywords/QuotationTemplate_key.robot
Resource    ../Keywords/General_keys.robot

*** Test Cases ***
Adding Quotation in Quotation Template
    Login As Admin
    Add Quotation Template