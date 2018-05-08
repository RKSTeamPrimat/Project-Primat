*** Settings ***
Documentation    This test suite verifies content on material page
Library          Selenium2Library
Resource         ../Keywords/Content_Material_Keywords.txt
Resource         ../Keywords/Main_Page_Keywords.txt

Test Setup       Open Primat To Main Page
Test Teardown    Close All Browsers

*** Test Cases ***
Verify Material Page Variables
    Go To Material Page
    Verify Material Page Displayed
    Verify Material Page Variables