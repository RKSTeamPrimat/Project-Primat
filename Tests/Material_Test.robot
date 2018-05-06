*** Settings ***
Documentation    This test suite verifies access to materials
Library          Selenium2Library    
Resource         ../Keywords/Browser_Keywords.txt
Resource         ../Keywords/User_Profile_Keywords.txt
Resource         ../Keywords/Login_Keywords.txt
Resource         ../Keywords/Material_Keywords.txt
Resource         ../Objects/User_Credentials.txt

Test Setup       Open Primat To Main Page
Test Teardown    Close All Browsers

*** Test Cases ***
 Non Registered User Access To Material
    Logout From Primat
    Find Material    chemie
    Validate Guest Warning 
    
Registered User Material Detail Page Content
    Login To Primat    ${username}    ${pass}
    Verify User Profile Page Loaded
    Find Material    chemie
    Wait Until Page Contains Element   ${downloadButton}    
    Check Thumbs Presence
    Check Favorite Button
      
Add Material To Favorites
    Login To Primat    ${username}    ${pass}
    Verify User Profile Page Loaded
    Find Material    chemie
    Check Favorite Button
    ${us}=    Add Material To Favorites
    Check Material In Favorites    ${us}
    
    
    
    
    
    