*** Settings ***
Documentation    Test resources
Library        SeleniumLibrary

*** Variables ***
${BROWSER}    firefox
${PAGE_TITLE}    Restaurante Universitário
${RU_WEBSITE}   https://pra.ufpr.br/ru/
${MENU_BTN}     (//a[@title='Cardápio'][contains(.,'Cardápio')])[2]
${VALID_TITLE}  //h2[contains(.,'Cardápios')]

*** Keywords ***
Open the browser
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Close the browser
    Close Browser

Access RU website
    Go To    ${RU_WEBSITE}
    Title Should Be    ${PAGE_TITLE}

Click in the menu
    Click Element    locator=${MENU_BTN}

Verify if RU page loads
    Wait Until Element Is Visible    locator=${VALID_TITLE}