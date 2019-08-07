*** Settings ***
Documentation       Simple web test suite via library 
...                 SeleniumLibrary

Library             SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://www.baidu.com
${BROWSER}        Chrome

*** Keywords ***
Open Browser To Baidu 
    Open Browser  ${LOGIN URL}  ${BROWSER}
    Title Should Be  百度一下，你就知道

Input Search Keywords
    [Arguments]  ${keywords}
    Input Text  kw  ${keywords}

Submit Search
    Click Button  su

Wait Search Deepexi Result
    Input Search Keywords  deepexi
    Submit Search
    Sleep  2s

Search Result Page Should Be Open
    Title Should Be  deepexi_百度搜索

*** Test Cases ***
Valid Login
    [Setup]     Open Browser To Baidu 
    Wait Search Deepexi Result
    Search Result Page Should Be Open
    [Teardown]  Close Browser
