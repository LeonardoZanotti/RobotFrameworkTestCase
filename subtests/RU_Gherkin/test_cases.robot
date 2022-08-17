*** Settings ***
Documentation   Example test cases of RU menu in Gherkin
Test Setup      Open browser
Test Teardown   Close browser

Resource    resources.robot

*** Test Cases ***
Access RU menu
    [Tags]  menu
    Given The RU website is accessed
    When Clicked in the menu
    Then The RU page loads