*** Settings ***
Library           SeleniumLibrary
Resource          ../Keywords/PDP.robot

*** Variables ***
${LocatorAsusN551JK-XO076H}    //a[text()='Asus N551JK-XO076H Laptop']
${ProductTitle}    ${EMPTY}
${ImageLocatorAsusN551JK-XO076H}    //*[@id="main-product-img-5"]
${LocatorAdobePhotoshopCS4}    //a[text()='Adobe Photoshop CS4']
${AwsomeTagLocator}    //*[@class="tag"]
