*** Settings ***
Test Setup        Open App
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/Common.robot
Resource          ../PageObjects/Common.robot
Resource          ../Keywords/Shopping_cart.robot
Resource          ../PageObjects/Shopping_cart_Page.robot
Resource          ../PageObjects/WishListPage.robot

*** Variables ***

*** Test Cases ***
TC0020_Check_out_as_guest
    Click Books
    Click Button    ${AddToCart_3Locator}
    Wait Until Element Is Not Visible    ${AddToNotificationBar}
    Click Shopping Cart
    Checkout Button
    Page Title Validation    Welcome, Please Sign In!
    Click Button    ${CheckoutAsGuestButtonLocator}
    Page Title Validation    Checkout

TC0022_Check_if_the_price_changes_according_the_discount_given_for_the_product
    Click Apparel
    Click Clothing
    Click Button    ${AddToCart_2Locator}
    Wait Until Element Is Not Visible    ${AddToNotificationBar}
    Click Shopping Cart
    Change Quantity    3
    Update Shopping Cart Button
    Product Unit Price Validation    $40.00
    Change Quantity    7
    Update Shopping Cart Button
    Product Unit Price Validation    $38.00
    Change Quantity    10
    Update Shopping Cart Button
    Product Unit Price Validation    $35.00

*** Keywords ***
