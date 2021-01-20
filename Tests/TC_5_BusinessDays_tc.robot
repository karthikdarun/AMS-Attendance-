*** Settings ***
Resource    ../Keywords/BusinessDays_key.robot
Resource    ../Keywords/General_keys.robot

*** Test Cases ***
Adding records in Business days
    Login As Admin
    Adding records in business days