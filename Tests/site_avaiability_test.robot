*** Settings ***
Library    Selenium2Library
Resource   ../Keywords/Browser_Keywords.txt

*** Test Cases ***
Google search for primat
    Search for primat on google
    Go To Primat From Google
    Close All Browsers
    
Open main page
    Open Primat To Main Page
    Close All Browsers
        
