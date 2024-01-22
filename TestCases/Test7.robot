*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/BaseKeywords.robot
Resource    ../Resources/LoginPageKeywords.robot
Variables    ../Configs/test_config_data_agent.py
Test Setup    start browser and maximize
Test Teardown    close browser window


*** Test Cases ***


Agent Campaign selection test case
    [Documentation]    Agent is selecting campaign test case
    [Tags]    Sanity
    Login user    ${user_id}    ${password}
    force login user
    agent work mode selection    ${user_work_mode}
    Agent Campaign Selection    ${user_campaign}
    sleep    30s
