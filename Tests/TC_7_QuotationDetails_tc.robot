*** Settings ***
Resource    ../Keywords/General_keys.robot
Resource    ../Keywords/Quotation details_key.robot

*** Test Cases ***
Adding more details in Quotation details
    Login As Admin
    Adding quotation details
