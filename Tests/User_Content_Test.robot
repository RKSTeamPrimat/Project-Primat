*** Settings ***
Documentation    This test suite verifies user content in primat page
Library          Selenium2Library    
Resource         ../Keywords/Browser_Keywords.txt
Resource         ../Keywords/User_Content_Keywords.txt
Resource         ../Keywords/Login_Keywords.txt
Resource         ../Settings/Material_Settings.txt

Test Teardown    Close All Browsers

*** Test Cases ***
Verify User Navigation Panel Is Available
   Open Primat To Main Page
   Login To Primat    ${username}    ${pass}
   Verify Main Page
   Check Navigation Panel Links
   Check Navigation Bananas Count
   Check Navigation Nickname
         
Verify Users "My Study" Navigation Is Available
   Open Primat To Main Page 
   Login To Primat    ${username}    ${pass}
   Verify Main Page
   Check My Study Materials Through Navigation Is Available
   Check My Study Subjects Through Navigation Is Available
   Check My Study Teachers Through Navigation Is Available
   Check My Study Schools Through Navigation Is Available

Verify Users "Bananas" Page Is Available
   Open Primat To Main Page 
   Login To Primat    ${username}    ${pass}
   Verify Main Page
   Check Navigation To Bananas Page
   
