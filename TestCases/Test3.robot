*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://validation.ameyo.com:8443/app
${browser}    chrome

*** Keywords ***
start browser and maximize
    open browser    ${url}    ${browser}
    maximize browser window
    ${imp_wait}=    get selenium implicit wait
    log to console    ${imp_wait}
    set selenium implicit wait    30seconds
    log to console    ${imp_wait}


close browser window
    ${Title}=    get title
    log to console    ${Title}
    close browser


*** Test Cases ***
Login postive Test case
    [Documentation]    Login positive test case
    [Tags]    Smoke
    start browser and maximize
    input text    xpath://input[@automationid='enterLoginUsername']    ron
    input text    xpath://input[@automationid='enterLoginPassword']    ron
    click element    xpath://button[@automationid='loginButton']
    sleep    5s
    close browser window

Agent work mode selection
    [Documentation]    Agent selecting the work mode
    [Tags]    Smoke
    start browser and maximize
    input text    xpath://input[@automationid='enterLoginUsername']    ron
    input text    xpath://input[@automationid='enterLoginPassword']    ron
    click element    xpath://button[@automationid='loginButton']
    click element    xpath://button[@automationid='confirmationBtn1']
    sleep    10s
    close browser window
