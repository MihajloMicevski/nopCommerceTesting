*** Settings ***
Library           SeleniumLibrary
Resource          ../PageObjects/Common.robot
Resource          ../PageObjects/Shopping_cart_Page.robot

*** Keywords ***
Product Unit Price Validation
    [Arguments]    ${Price}
    Element Text Should Be    ${ProductUnitPriceLocator}    ${Price}

Update Shopping Cart Button
    Click Button    ${UpdateCartLocator}
