*** Settings ***
Documentation    Test resources
Library        SeleniumLibrary

*** Variables ***
${BROWSER}    firefox
${PAGE_TITLE}    /html/body/div[2]/nav/a.navbar-brand
${COE_MENU}    /html/body/div[2]/nav/div[1]/nav/ul/li[6]/a


*** Keywords ***
Open the browser
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Close the browser
    Close Browser

Access website "${WEBSITE}"
    Go To    ${WEBSITE}
    Wait Until Element Is Visible    locator=${PAGE_TITLE}

Click "${ITEM}"
    Click Element    locator=${ITEM}

Is in the page "${TEXT}"
    Wait Until Element Is Visible    locator=//p[contains(.,'${TEXT}')