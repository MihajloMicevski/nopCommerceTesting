*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/TestData.robot
Resource          ../Resources/SearchTestData.robot
Resource          ../PageObjects/Search.robot
Library           String
Resource          ../PageObjects/Common.robot

*** Keywords ***
Search
    [Arguments]    ${SearchText}
    Click Element    ${SearchLocator}
    Input Text    ${SearchLocator}    ${SearchText}

Click Search Button
    Click Button    ${SearchButtonLocator}

Validate Search Page
    Element Text Should Be    ${PageTitleLocator}    ${SearchPageTitleText}

Advance Search
    [Arguments]    ${SearchKeyword}    ${SelectCategory}    ${SearchManufacturer}
    Select Checkbox    ${AdvanceSearchLocator}
    Input Text    ${SearchKeywordLocator}    ${SearchTextLaptop}
    Select From List By Value    ${SearchCategoryListLocator}    1
    Select Checkbox    ${Chekbox_ Automatically_search_sub_categories}
    Select From List By Value    ${SearchManufacturerListLocator}    2
    Select Checkbox    ${Chekbox_ Search_In_product_descriptions}
