*** Settings ***
Library    Selenium2Library
Resource   ../Keywords/keywords.txt

*** Test Cases ***
Google search for primat
    Search for primat on google
    Close All Browsers
    
Open main page
    Open primat to main page
    Close All Browsers
        
