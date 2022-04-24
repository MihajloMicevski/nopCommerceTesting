*** Settings ***
Library           SeleniumLibrary
Resource          ../Keywords/WishList.robot

*** Variables ***
${AddToWishList_2}    (//button[@class="button-2 add-to-wishlist-button"])[2]
${WishListLocator}    //*[@class="wishlist-qty"]
${QuantityNumber}    ${EMPTY}
${UpdateWishListButton}    //button[@class="button-2 update-wishlist-button"]
${ProductNameWishlistLocator}    //*[@class="product-name"]
