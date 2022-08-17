*** Settings ***
Documentation    Test resources
Library        SeleniumLibrary

*** Variables ***
${BROWSER}    firefox
${PAGE_TITLE}    //a[@class='navbar-brand d-none d-md-flex align-items-center m-0 mr-4 p-0 aabtn']
${COE_MENU}      //a[@role='menuitem'][contains(.,'COE (Estágio)')]


*** Keywords ***
Open the browser
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Close the browser
    Close Browser

Access website "${WEBSITE}"
    Go To    ${WEBSITE}
    Wait Until Element Is Visible    locator=${PAGE_TITLE}

Click in the COE menu
    Click Element    locator=${COE_MENU}

Is in the page "${TEXT}"
    Wait Until Element Is Visible    locator=//p[contains(.,'${TEXT} (atendimento por email e Teams durante a suspensão do calendário acadêmico):')]