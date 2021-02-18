*** Settings ***
Documentation               This is some basic info about the whole test suite
Library                     SeleniumLibrary
Test Setup                  Begin Web Test
Test Teardown               End Web Test


*** Keywords ***
Begin Web Test
    open browser                about:blank         chrome
Go to Web Page
    Load Page
    Verify Page Loaded
Load Page
    go to                       https://www.willys.se/
Verify Page Loaded
    wait until page contains    Handla billig mat online
Search for Product
    input text                  id:selenium--search-items-input     kiwi
    press keys                   xpath://*[@id="selenium--search-items-input"]       RETURN
    wait until page contains    Sökord: kiwi
End Web Test
    close browser

*** Test Cases ***
User can access website
    [Documentation]             This is some basic info about the whole test suite
    [Tags]                      Test 1
    Go to Web Page


User can search for a product
    [Documentation]             This is some basic info about the whole test suite
    [Tags]                      Test 2
    Go to Web Page
    Search for Product