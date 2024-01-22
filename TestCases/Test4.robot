*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/BaseKeywords.robot
Test Setup    start browser and maximize
Test Teardown    close browser window


*** Test Cases ***
Login postive Test case
    [Documentation]    Login positive test case
    [Tags]    Smoke
    input text    xpath://input[@automationid='enterLoginUsername']    ron
    input text    xpath://input[@automationid='enterLoginPassword']    ron
    click element    xpath://button[@automationid='loginButton']
    sleep    5s


Agent work mode selection
    [Documentation]    Agent selecting the work mode
    [Tags]    Smoke
    input text    xpath://input[@automationid='enterLoginUsername']    ron
    input text    xpath://input[@automationid='enterLoginPassword']    ron
    click element    xpath://button[@automationid='loginButton']
    click element    xpath://button[@automationid='confirmationBtn1']
    sleep    10s

