*** Settings ***
Documentation    This test suite verifies the number of users online
Library          Selenium2Library    
Resource         ../Keywords/Browser_Keywords.txt
Resource         ../Keywords/User_Profile_Keywords.txt
Resource         ../Keywords/Login_Keywords.txt
Resource         ../Keywords/Main_Page_Keywords.txt

Test Setup       Open Primat To Main Page
Test Teardown    Close All Browsers

*** Test Cases ***
Verify Main Page Navigation Variables
    Verify MainPage Variables
    Verify MainPage Variables Links