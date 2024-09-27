*** Settings ***
Library    SeleniumLibrary
Library    ../CustomLibrary.py
Resource   ../resources/locators/locators.robot
Resource   ../resources/keywords/custom_keywords.robot
Variables  ../variables/test_variables.py

*** Test Cases ***
Search Product
    Open Browser And Log In
    Input Text   ${SEARCH_FIELD}   ${PRODUCT_NAME}
    Click Button  ${SEARCH_BUTTON}
    Page Should Contain ${PRODUCT_NAME}
    Close Browser
