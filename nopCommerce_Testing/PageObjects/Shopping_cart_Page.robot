*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${CheckoutAsGuestButtonLocator}    //*[@class="button-1 checkout-as-guest-button"]
${CheckoutLocator}    //*[@id="checkout"]
${CheckBoxTermsOfServiceLocator}    //*[@id="termsofservice"]
${AddToCart_3Locator}    (//button[@class="button-2 product-box-add-to-cart-button"])[3]
${AddToCart_2Locator}    (//button[@class="button-2 product-box-add-to-cart-button"])[2]
${ProductUnitPriceLocator}    //*[@class="product-unit-price"]
${UpdateCartLocator}    //button[@class="button-2 update-cart-button"]
