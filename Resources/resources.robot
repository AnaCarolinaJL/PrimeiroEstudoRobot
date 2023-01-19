*** Settings ***
Library     OperatingSystem

*** Variables ***
${MY_VARIABLE}      My test variable
${MY_VARIABLE2}      Another test variable

${GOOGLE-SEARCH-FIELD}      //input[@title="Search"]

@{LIST}     test1       test2       test3       test4

&{DICTIONARY}        username=testuser       password=demo
&{DICTIONARY2}       username=testuser2      password=demo2

*** Keywords ***
Log My Username
    [Arguments]         ${USERNAME}
    Log                 ${USERNAME}

Log My Password
    [Arguments]         ${PASSWORD}
    log                 ${PASSWORD}

Log My Specific Username And Password
    [Arguments]          ${USERNAME}     ${PASSWORD}
    Log My Username      ${USERNAME}
    Log My Password      ${PASSWORD}
    Log                  This is the final video