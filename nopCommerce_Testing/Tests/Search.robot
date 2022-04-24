*** Settings ***
Test Setup        Open App
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../PageObjects/Search.robot
Resource          ../Resources/TestData.robot
Resource          ../Keywords/Common.robot
Resource          ../Resources/SearchTestData.robot
Resource          ../Keywords/Search.robot
Resource          ../PageObjects/Common.robot

*** Variables ***

*** Test Cases ***
TC005_Check_if_auto-suggestion_displays_suggestions_in_the_search_field
    Search    ${SearchTextApple}
    Wait Until Element Is Visible    ${SearchDropDownLocator}

TC008_Test_if_the_search_is_case_insensitive
    Search    ${SearchText_ASUS_N551JK-XO076H_LAPTOP_BigLetters}
    Click Search Button
    Validate Search Page
    Search    ${SearchText_asus_n551jk-xo076h_laptop_SmallLetters}
    Click Search Button
    Validate Search Page

TC009_Run_succesful_search_using_the_Advanced_search_option
    Search    ${SearchRandomText}
    Click Search Button
    Validate Search Page
    Advance Search    ${SearchTextLaptop}    1    2
    Click Button    ${SearchPageSearchButtonLocator}
    Element Should Contain    ${ProductTitleLocatorSearchPage}    ${TitleTextHP_Spectre_XT_Pro_UltraBook}
