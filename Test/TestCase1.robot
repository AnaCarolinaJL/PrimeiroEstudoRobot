*** Settings ***
Documentation       This is my first Testcase
Resource            ../Resources/resources.robot

*** Test Cases ***
TEST
    [Tags]            demo          demo2
    Log My Specific Username And Password   ${DICTIONARY}[username]         ${DICTIONARY}[password]
