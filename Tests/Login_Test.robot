*** Settings ***
Documentation    This test suite verifies user manual in primat page
Library          Selenium2Library    
Resource         ../Keywords/Browser_Keywords.txt
Resource         ../Keywords/User_Profile_Keywords.txt
Resource         ../Keywords/Login_Keywords.txt
Resource         ../Objects/User_Credentials.txt

Test Setup       Open Primat To Main Page
Test Teardown    Close All Browsers

*** Test Cases ***
Valid Login To Primat
    Login To Primat    ${validLogin}    ${validPswd}
    Sleep  10
    Verify User Profile Page Loaded

Invalid Login To Primat
    Login To Primat    ${invalidLogin}    ${invalidPswd}
    Verify Alert Displayed
    
Invalid Login To Primat - blank parameters
    Login To Primat    ${blank}    ${blank}
    Verify Login Form Displayed  

### JS nefunguje v prohlizece ze skolniho pocitace
# Invalid Login To Primat - blank parameters - JS 
    # Open Login Form
    # Enable Input Validation For Login Without Param Test
    # Insert Credentials And Submit    ${blank}    ${blank}
    # Verify Alert Displayed
    