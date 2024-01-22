*** Settings ***
Library    SeleniumLibrary
Variables    LoginPageLocators.py
Resource    BaseKeywords.robot

*** Keywords ***
Login user
    [Arguments]    ${user_id}    ${password}
    Input Text With Explicit Wait    ${user_id_x}    ${user_id}    10s
    Input Text With Explicit Wait    ${user_passwd_x}    ${password}    5s
    Click Element With Explicit Wait    ${login_button_x}

Force Login User
    ${force_login_visible}    run keyword and return status    page should contain element    ${force_login_heading_x}
    run keyword if    '${force_login_visible}' == 'True'    click element    ${force_login_ok_button_x}


Agent Work Mode Selection
    [Arguments]    ${user_work_mode}
    wait until page contains    Working Mode Selection    timeout=10s
#    wait until element is visible    ${agent_work_modes_list_x}    10s
    select one value from multiple elements    ${agent_work_modes_list_x}    ${user_work_mode}
    Click Element With Explicit Wait    ${agent_work_mode_next_button_x}

Agent Campaign Selection
    [Arguments]    ${user_campaign}
    Click Element With Explicit Wait    ${select_voice_campaign_input_x}    30s
    select one value from multiple elements    ${voice_campaign_list_x}    ${user_campaign}
    Click Element With Explicit Wait    ${voice_campaign_select_save_button_x}

Verify Welcome Message In Workmode Selection Page
    [Arguments]    ${user_id}
    wait until element is visible    ${agent_work_modes_list_x}    10s
    page should contain element    ${welcome_user_x}
    page should contain    Welcome ${user_id}
