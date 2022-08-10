*** Settings ***
Documentation       Verify TADS page
Resource            tads_resources.robot
Test Setup          Open the browser
Test Teardown       Close the browser

*** Variables ***
${URL}              https://www.tads.ufpr.br/
${MENU_NAME}        COE (Estágio)

*** Test Cases ***
TEST CASE 1: Verify internship page
    [Documentation]     Access internship menu in the tads website
    [Tags]              internship
    Open the browser ${URL}
    Click "${MENU_NAME}"
    Is in the page "Membros do COE"