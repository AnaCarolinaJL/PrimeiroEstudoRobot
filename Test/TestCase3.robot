*** Settings ***
Library     OperatingSystem

*** Keywords ***
Log My Username
    Log     ${DICTIONARY}[username]

Log My Password
    log     ${DICTIONARY}[password]

Log Username and Password 1
    Log     ${DICTIONARY}[username]
    log     ${DICTIONARY}[password]

Log Username and Password 2
    Log My Username
    Log My Password

Log My Specific Username And Password
    [Arguments]          ${USERNAME}     ${PASSWORD}
    Log My Username      ${USERNAME}
    Log My Password      ${PASSWORD}

*** Variables ***
&{DICTIONARY2}       username=testuser      password=demo

*** Test Cases ***
TEST2
    [Tags]  Demo
    log     This is my third TestCase
    Log   This is my third TestCase
    Log My Specific Username And Password   ${DICTIONARY2}[username]         ${DICTIONARY2}[password]