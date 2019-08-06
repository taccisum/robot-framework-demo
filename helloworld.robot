*** Settings   ***
Library       ./lib/TestLib.py
Resource      ./res.resource
Suite Setup   Login   ${USERNAME}   abcd1234

*** Test Cases ***
First test case     
  Begin web test 
  Should Be Equal   ${1+1}   ${2}
Second test case    
  End web test                
Template demo test case    
  [Documentation]  template test
  [Template]       Login
  taccisum   abcd1234
  anit       abcd4321
