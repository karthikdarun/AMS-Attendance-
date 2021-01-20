*** Settings ***
Resource    ../Keywords/EmployeeMaster_key.robot
Resource    ../Keywords/General_keys.robot

*** Test Cases ***
Adding record in Employee Master
    Login As Admin
    Add Employee