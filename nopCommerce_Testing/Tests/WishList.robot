*** Settings ***
Test Setup        Open App
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/WishList.robot
Resource          ../PageObjects/WishListPage.robot
Resource          ../Keywords/Common.robot

*** Test Cases ***
TC0007_Check_if_the_total_price_is_calculated_correctly
    Click Books
    Click Button    ${AddToWishList_2}
    Wait Until Element Is Not Visible    ${AddToNotificationBar}
    Click Wishlist
    Change Quantity    5
    Click Button    ${UpdateWishListButton}

TC0010_Access_the_added_product_details_from_the_wish_list_by_clicking_the_product_name
    Click Books
    Click Button    ${AddToWishList_2}
    Wait Until Element Is Not Visible    ${AddToNotificationBar}
    Click Wishlist
    Click Product Name from Wishlist    First Prize Pies
