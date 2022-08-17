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

Access polytechnic RU website
    Go To    ${RU_POLYTECHNIC_WEBSITE}
    Wait Until Element Is Visible    locator=//h2[contains(.,'Cardápio RU Centro Politécnico')]

Check if the breakfast menu is available
    Wait Until Element Is Visible    locator=(//td[contains(.,'CAFÉ DA MANHÃ')])[1]
    ${DAY}  Get Time    format=day
    ${MONTH}  Get Time    format=month
    ${YEAR}  Get Time    format=year
    Log    message=The current date is ${DAY}/${MONTH}/${YEAR}
    Wait Until Page Contains    ${DAY}/${MONTH}/${YEAR}