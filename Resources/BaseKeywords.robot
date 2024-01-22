*** Settings ***
Documentation  This file contains common keywords
Library    SeleniumLibrary
Variables    ../Configs/env_config.py


*** Keywords ***
start browser and maximize
    open browser    ${url}    ${browser}
    maximize browser window
    ${imp_wait}=    get selenium implicit wait
    log to console    ${imp_wait}
    set selenium implicit wait    0seconds
    log to console    ${imp_wait}


close browser window
    ${Title}=    get title
    log to console    ${Title}
    close browser

Select One Value from Multiple Elements
    [Arguments]    ${locator}    ${value}
    log to console    value passed by user is ${value}
    ${elements} =    get webelements    ${locator}
    FOR    ${element}    IN    @{elements}
        ${text} =    get text    ${element}
        IF    '${text}' == '${value}'
            click element    ${element}
            log to console    clicking on element with text ${text}
            BREAK
        END
    END

Click Element With Explicit Wait
    [Arguments]    ${locator}    ${timeout}=20s
    wait until element is clickable    ${locator}    ${timeout}
    click element    ${locator}


Input Text With Explicit Wait
    [Arguments]    ${locator}    ${text}    ${timeout}=20s
    wait until element is visible    ${locator}    ${timeout}
    input text    ${locator}    ${text}

Wait Until Element is Clickable
    [Arguments]    ${locator}    ${timeout}=20s
    wait until element is visible    ${locator}    ${timeout}
    wait until element is enabled    ${locator}    ${timeout}