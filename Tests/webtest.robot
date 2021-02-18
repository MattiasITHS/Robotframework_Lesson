*** Settings ***
Documentation               This is some basic info about the whole test suite
Library                     SeleniumLibrary

*** Test Cases ***
User can access website and search for a product
    [Documentation]             This is some basic info about the whole test suite
    [Tags]                      Test 1
    open browser                about:blank         chrome
    go to                       https://www.willys.se/
    wait until page contains    Handla billig mat online
    input text                  id:selenium--search-items-input     kiwi
    press keys                   xpath://*[@id="selenium--search-items-input"]       RETURN
    wait until page contains    Sökord: kiwi
    close browser  # stänger webläsaren