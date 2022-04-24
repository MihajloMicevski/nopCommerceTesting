*** Settings ***
Test Setup        Open App
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/Common.robot
Resource          ../Keywords/Checkout.robot
Resource          ../PageObjects/Common.robot
Resource          ../PageObjects/Checkout.robot
Resource          ../Resources/CheckoutData.robot

*** Variables ***

*** Test Cases ***
TC009_Checkout_as_guest_and_pay_with:_Credit_Card
    Click Computers
    Click Software
    Click Button    ${AddToCart_2Locator}
    Wait Until Element Is Not Visible    ${AddToNotificationBar}
    Click Shopping Cart
    Checkout Button
    Click Button    ${CheckoutAsGuestButtonLocator}
    Page Title Validation    Checkout
    Checkout Name Last Name Email    Ivan    Ivanov    ivanovivan@email.com
    Checkout Address Details And Phone    219    Moscow    Leninsky Ave 20    101000    787-0000
    Checkbox Should Be Selected    ${CheckboxShipToTheSameAddressLocator}
    Click Button    ${ContinueCheckoutLocator}
    Wait Until Element Is Visible    ${CheckoutMethodListLocator}
    Select Radio Button    shippingoption    Ground___Shipping.FixedByWeightByTotal
    Click Button    ${CheckoutShippingMethodButtonLocator}
    Wait Until Element Is Visible    ${CheckoutPaymentMethodLocator}
    Select Radio Button    paymentmethod    Payments.Manual
    Click Button    ${CheckoutPaymentMethodButtonLocator}
    Wait Until Element Is Visible    ${CheckoutPaymentDropdownListLocator}
    Click Button    ${CheckoutPaymentInfoButtonLocator}
    Wait Until Element Is Visible    ${CheckoutErrorPaymentCartMessageLocator}
    Element Should Contain    ${CheckoutMessageErrorValidationSummaryLocator}    Enter cardholder name

TC003_Access_checkout_address_page_as_guest
    Click Computers
    Click Software
    Click Button    ${AddToCart_2Locator}
    Wait Until Element Is Not Visible    ${AddToNotificationBar}
    Click Shopping Cart
    Checkout Button
    Click Button    ${CheckoutAsGuestButtonLocator}
    Page Title Validation    Checkout

*** Keywords ***
