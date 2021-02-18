*** Settings ***
Documentation               This is some basic info about the whole test suite
Library                     SeleniumLibrary

*** Test Cases ***
User can access website
    [Documentation]             This is some basic info about the whole test suite
    [Tags]                      Test 1
    open browser                about:blank         chrome
    go to                       https://www.willys.se/
    wait until page contains    Handla billig mat online
    close browser