*** Settings ***
Resource    ../Keywords/General_keys.robot
Resource    ../Keywords/InvoiceDetails_key.robot

*** Test Cases ***
Adding Invoice details
    Login As Admin
    Adding Invoice details