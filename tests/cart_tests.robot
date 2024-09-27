*** Settings ***
Library    SeleniumLibrary
Library    ../CustomLibrary.py
Resource   ../resources/locators/locators.robot
Resource   ../resources/keywords/custom_keywords.robot
Variables  ../variables/test_variables.py

*** Test Cases ***
Add Product To Cart
    Open Browser And Log In
    Click Element   ${FIRST_PRODUCT}
    Click Button    ${ADD_TO_CART_BUTTON}
    Click Element    ${CART_ICON}
    Page Should Contain ${FIRST_PRODUCT_NAME}
    Close Browser
