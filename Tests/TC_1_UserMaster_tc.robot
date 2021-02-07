*** Settings ***

Resource    ../Keywords/General_keys.robot
Resource    ../Keywords/UserMaster_key.robot

*** Test Cases ***

Log in to the application
    Login As Admin
    Add user
    