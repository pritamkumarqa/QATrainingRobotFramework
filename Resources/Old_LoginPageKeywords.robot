*** Settings ***
Library    SeleniumLibrary
Variables    LoginPageLocators.py
Resource    BaseKeywords.robot

*** Keywords ***
Login user
    [Arguments]    ${user_id}    ${password}
    input text    ${user_id_x}    ${user_id}
    input text    ${user_passwd_x}    ${password}
    click element    ${login_button_x}

Force Login User
    click element    ${force_login_ok_button_x}

Agent Work Mode Selection
    [Arguments]    ${user_work_mode}
    select one value from multiple elements    ${agent_work_modes_list_x}    ${user_work_mode}
    click element    ${agent_work_mode_next_button_x}

Agent Campaign Selection
    [Arguments]    ${user_campaign}
    click element    ${select_voice_campaign_input_x}
    select one value from multiple elements    ${voice_campaign_list_x}    ${user_campaign}
    click element    ${voice_campaign_select_save_button_x}