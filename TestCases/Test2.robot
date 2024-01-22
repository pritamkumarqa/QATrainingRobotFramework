*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://google.com
${browser}    chrome


*** Test Cases ***
Demo test case 1
    [Documentation]    Google page open test case
    [Tags]    Smoke
    open browser    ${url}    ${browser}
    maximize browser window
    input text    xpath://textarea[@name='q']    mobile
    press keys    xpath://div[@class='lJ9FBc']//input[@name='btnK' and @value='Google Search']    [Return]

    sleep    20s
    close browser