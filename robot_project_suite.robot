*** Settings ***
Library    CustomLibrary.py
Resource   resources/keywords/custom_keywords.robot
Variables  variables/test_variables.py

Suite Setup    Start Browser Session    ${LOGIN_URL}    ${BROWSER}
Suite Teardown  End Browser Session

*** Test Cases ***
Run Login Tests
    Include Test Suite    tests/login_tests.robot

Run Search Tests
    Include Test Suite    tests/search_tests.robot

Run Cart Tests
    Include Test Suite    tests/cart_tests.robot
