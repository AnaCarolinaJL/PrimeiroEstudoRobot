*** Settings ***
Resource            ../Resources/resources.robot

*** Test Cases ***
TEST2
    [Tags]  Demo    demo2
    Log My Specific Username And Password   ${DICTIONARY}[username]         ${DICTIONARY}[password]