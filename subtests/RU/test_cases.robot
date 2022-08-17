*** Settings ***
Documentation   Example test cases of RU menu
Test Setup      Open browser
Test Teardown   Close browser

Resource    resources.robot

*** Test Cases ***
Access RU menu
    [Tags]  menu
    Access RU website
    Click in the menu
    Verify if RU page loads

Verify breakfast
    [Tags]  breakfast
    Access polytechnic RU website
    Check if the breakfast menu is available

Search prices
    [Tags]  price
    Access RU website
    Write "preço RU" and search
    Verify if the page "Preços" is in the results
    Check if prices are shown