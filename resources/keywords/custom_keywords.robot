*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser And Log In
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Input Text    ${USERNAME_FIELD}    ${VALID_USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${VALID_PASSWORD}
    Click Button    ${LOGIN_BUTTON}
    Wait Until Page Contains    Products


Close Browser And Log Out
    Close Browser
