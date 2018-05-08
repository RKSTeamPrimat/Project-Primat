*** Settings ***
Documentation    This test suite verifies content on teachers page
Library          Selenium2Library
Resource         ../Keywords/Content_Teachers_Keywords.txt
Resource         ../Keywords/Main_Page_Keywords.txt

Test Setup       Open Primat To Teachers Page
Test Teardown    Close All Browsers

*** Test Cases ***
Verify Teachers Page Variables
    Go To Teachers Page
    Verify Teachers Page Displayed
    Verify Teachers Page Variables