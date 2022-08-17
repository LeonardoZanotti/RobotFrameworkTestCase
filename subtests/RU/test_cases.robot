*** Settings ***
Documentation   Example test cases of RU menu
Test Setup      Open browser
Test Teardown   Close browser

Resource    resources.robot

*** Test Cases ***
Access RU menu
    Access RU website
    Click in the menu
    Verify if RU page loads

Verify breakfast
    Access polytechnic RU website
    Check if the breakfast menu is available
