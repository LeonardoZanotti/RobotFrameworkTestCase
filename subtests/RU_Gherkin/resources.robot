*** Settings ***
Documentation    Test resources
Library        SeleniumLibrary

*** Variables ***
${BROWSER}                  firefox
${PAGE_TITLE}               Restaurante Universitário
${PAGE_TITLE_2}             Cardápio RU Centro Politécnico
${RU_WEBSITE}               https://pra.ufpr.br/ru/
${RU_POLYTECHNIC_WEBSITE}   https://pra.ufpr.br/ru/ru-centro-politecnico/
${MENU_BTN}                 (//a[@title='Cardápio'][contains(.,'Cardápio')])[2]
${VALID_TITLE}              //h2[contains(.,'Cardápios')]
${PRICES_LINK}              (//a[@href='https://pra.ufpr.br/ru/precos/'][contains(.,'Preços')])[3]

*** Keywords ***
Open the browser
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Close the browser
    Close Browser

The RU website is accessed
    Go To    ${RU_WEBSITE}
    Title Should Be    ${PAGE_TITLE}

Clicked in the menu
    Click Element    locator=${MENU_BTN}

The RU page loads
    Wait Until Element Is Visible    locator=${VALID_TITLE}
