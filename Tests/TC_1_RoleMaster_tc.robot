*** Settings ***
Resource    ../Keywords/General_keys.robot
Resource    ../Keywords/RoleMaster_key.robot

*** Test Cases ***
Add role in Role Master
    Login As Admin
    Add Role