*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/BaseKeywords.robot
Resource    ../Resources/LoginPageKeywords.robot
Test Setup    start browser and maximize
Test Teardown    close browser window


*** Test Cases ***
Login postive Test case
    [Documentation]    Login positive test case
    [Tags]    Smoke
    Login user    ron    ron
    sleep    10s

Agent work mode select test case
    [Documentation]    Agent is selecting work mode test case
    [Tags]    Sanity
    Login user    ron    ron
    force login user
    agent work mode selection    WFO (Work From Office)
    sleep    10s


