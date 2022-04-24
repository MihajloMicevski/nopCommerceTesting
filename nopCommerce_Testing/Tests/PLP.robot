*** Settings ***
Test Setup        Open App
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/Common.robot
Resource          ../PageObjects/PLP.robot
Resource          ../Resources/TestData.robot
Resource          ../Resources/SearchTestData.robot
Resource          ../PageObjects/Common.robot
Resource          ../Keywords/PLP.robot

*** Variables ***

*** Test Cases ***
TC002_Verify_the_filter_option_is_working
    Click Computers
    Click Notebooks
    Click Filter CPU Type i5
    Click Filter Memory 8 GB

TC009_Compare_two_products
    Click Electronics
    Click Cell phones
    Click Button    ${AddToCompareButton_2}
    Wait Until Element Is Visible    ${CompareNotificationBarLocator}
    Click Button    ${AddToCompareButton_3}
    Sleep    3
    Click Element    ${GoToCompareListLocator}
    Sleep    3
    Page Title Validation    Compare products
