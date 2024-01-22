*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Assert Demo Case1
    ${x}    set variable    hello
    ${y}    set variable    hello
    should be equal    ${x}    ${y}

Assert Demo Case2
    ${x}    set variable    hello
    ${y}    set variable    hello1
    should not be equal    ${x}    ${y}

Assert Demo Case3
    ${x}    set variable    hello I am learning Python
    ${y}    set variable    hello1
    should contain    ${x}    Hello