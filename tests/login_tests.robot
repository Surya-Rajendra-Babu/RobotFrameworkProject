*** Settings ***
Library     SeleniumLibrary
Library    ../CustomLibrary.py
Resource   ../resources/locators/locators.robot
Resource   ../resources/keywords/custom_keywords.robot
Variables  ../variables/test_variables.py


*** Test Cases ***
Valid Login Test
    Open Browser And Log In
    Page Should Contain    Products
    Close Browser

Invalid Login Test
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Input Text    ${USERNAME_FIELD}    invalid_user
    Input Text    ${PASSWORD_FIELD}    invalid_pass
    Click Button    ${LOGIN_BUTTON}
    Page Should Contain    Epic sadface: Username and password do not match
    Close Browser

