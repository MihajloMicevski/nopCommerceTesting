*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/TestData.robot

*** Variables ***
${PageTitleLocator}    //*[@class="page-title"]
${Title}          ${EMPTY}
${ImageCloseButton}    //button[@class="mfp-close"]
${BooksLocator}    //a[text()='Books ']
${ProductName}    ${EMPTY}
${ProductTitleLocator}    //*[@class="product-name"]
${ShoppingCartLocator}    //*[@class="cart-label"]
${QuantityFieldLocator}    //*[@class="qty-input"]
${ApparelLocator}    //a[text()='Apparel ']
${ClothingLocator}    //a[text()=' Clothing ']
${AddToNotificationBar}    //*[@class="content"]
${SoftwareLocator}    //a[text()=' Software ']
${MyAccountLocator}    //*[@class="ico-account"]
${LogOutLocator}    //*[@class="ico-logout"]
