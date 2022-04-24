*** Settings ***
Test Setup        Open App
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../PageObjects/PDP.robot
Resource          ../Keywords/PDP.robot
Resource          ../Keywords/Common.robot
Resource          ../Keywords/PLP.robot

*** Variables ***

*** Test Cases ***
TC0010_Check_if_larger_image_is_displayed_from_the_same_product_by_clicking_on_the_product_image
    Click Computers
    Click Notebooks
    Click Element    ${LocatorAsusN551JK-XO076H}
    Product Title Validation    Asus N551JK-XO076H Laptop
    Click Element    ${ImageLocatorAsusN551JK-XO076H}
    Click Button    ${ImageCloseButton}

TC0012_Check_if_the_product_is_displayed_with_all_the_products_for_the_specific_tag
    Click Computers
    Click Notebooks
    Click Element    ${LocatorAsusN551JK-XO076H}
    Product Title Validation    Asus N551JK-XO076H Laptop
    Click Element    ${AwsomeTagLocator}
    Page Title Validation    Products tagged with 'awesome'
    Click Element    ${LocatorAdobePhotoshopCS4}
    Product Title Validation    Adobe Photoshop CS4
