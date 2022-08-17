*** Settings ***
Documentation       Verify TADS page
Resource            tads_resources.robot
Test Setup          Open the browser
Test Teardown       Close the browser

*** Variables ***
${URL}              https://www.tads.ufpr.br/

*** Test Cases ***
TEST CASE 1: Verify internship page
    [Documentation]     Access internship menu in the tads website
    [Tags]              internship
    Access website "${URL}"
    Click in the COE menu
    Is in the page "Membros do COE"