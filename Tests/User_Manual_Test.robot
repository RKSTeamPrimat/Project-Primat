*** Settings ***
Documentation    This test suite verifies user manual in primat page
Library          Selenium2Library    
Resource         ../Keywords/Browser_Keywords.txt
Resource         ../Keywords/Main_Page_Keywords.txt

Test Teardown    Close All Browsers

*** Test Cases ***
Verify User Manual Link From Primat Page
   Open Primat To Main Page
   Go To User Manual

Verify User Manual Link From Google
   Search For Primat On Google
   Go To User Manual From Google
   Verify User Manual Page Displayed
   
### add test verify user manual content