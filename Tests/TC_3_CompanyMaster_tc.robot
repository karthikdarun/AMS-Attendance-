*** Settings ***
Resource    ../Keywords/CompanyMaster_key.robot
Resource    ../Keywords/General_keys.robot



*** Test Cases ***
Add Company in the Company Master
    Login As Admin
    Add Company in Company Master
    

    