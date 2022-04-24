*** Settings ***
Library           SeleniumLibrary
Resource          ../PageObjects/WishListPage.robot
Resource          ../PageObjects/Common.robot

*** Keywords ***
Click Product Name from Wishlist
    [Arguments]    ${ProductName}
    Click Element    ${ProductNameWishlistLocator}
    Element Text Should Be    ${ProductTitleLocator}    ${ProductName}
