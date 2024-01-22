*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Demo test case 1
    [Documentation]    Google page open test case
    [Tags]    Smoke
    open browser    https://google.com    chrome
    sleep    20s
    close browser