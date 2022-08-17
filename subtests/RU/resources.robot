*** Settings ***
Documentation    Test resources
Library        SeleniumLibrary

*** Variables ***
${BROWSER}    firefox
${PAGE_TITLE}    Restaurante Universitário
${RU_WEBSITE}   https://pra.ufpr.br/ru/
${MENU_BTN}     /html/body/div[4]/div[1]/div/li/div/ul/li[1]/a

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

Is in the page "${TEXT}"
    Wait Until Element Is Visible    locator=//p[contains(.,'${TEXT}')