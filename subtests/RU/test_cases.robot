*** Settings ***
Documentation   Casos de teste para exemplo de cardápios do RU
Test Setup      Open browser
Test Teardown   Close browser

Resource    resources.robot

*** Test Cases ***
Access RU menu
    Access RU website
    Click in the menu
    Verify if RU page loads