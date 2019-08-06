*** Settings   ***
Documentation  demo resource

*** Keywords   ***
Login
  [Arguments]   ${username}   ${password}
  Log   User ${username} login with password ${password}.
Begin web test                      
  Log to console   \nHello, ${USERNAME}
  Log to console   The test case is running...
End web test           
  Logout   ${USERNAME}
  Log   The test case has ended

*** Variables  ***
${USERNAME}               taccisum
