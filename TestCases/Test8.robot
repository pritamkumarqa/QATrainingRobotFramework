*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/BaseKeywords.robot
Resource    ../Resources/LoginPageKeywords.robot
Variables    ../Configs/test_config_data_agent.py
Test Setup    start browser and maximize
Test Teardown    close browser window


*** Test Cases ***
Login postive Test case
    [Documentation]    Login positive test case
    [Tags]    Smoke
    Login user    ${user_id}    ${password}
    force login user
    verify welcome message in workmode selection page    ${user_id}
    sleep    10s




