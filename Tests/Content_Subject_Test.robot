*** Settings ***
Documentation    This test suite verifies content on subject page
Library          Selenium2Library
Resource         ../Keywords/Content_Subject_Keywords.txt
Resource         ../Keywords/Main_Page_Keywords.txt
Resource         ../Keywords/Browser_Keywords.txt

Test Setup       Open Primat To Main Page
Test Teardown    Close All Browsers

*** Test Cases ***
Verify Subject Page Variables
    Go To Subject Page
    Verify Subject Page Displayed
    Verify Subject Page Variables