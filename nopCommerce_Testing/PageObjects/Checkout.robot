*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${CheckoutMessageErrorValidationSummaryLocator}    //*[@class="message-error validation-summary-errors"]
${CheckoutErrorPaymentCartMessageLocator}    //*[@class="message-error validation-summary-errors"]
${CheckoutPaymentInfoButtonLocator}    //button[@class="button-1 payment-info-next-step-button"]
${CheckoutPaymentDropdownListLocator}    //*[@class="dropdownlists"]
${CheckoutPaymentMethodButtonLocator}    //button[@class="button-1 payment-method-next-step-button"]
${CheckoutPaymentMethodLocator}    //*[@id="payment-method-block"]
${CheckoutShippingMethodButtonLocator}    //button[@class="button-1 shipping-method-next-step-button"]
${CheckoutMethodListLocator}    //*[@class="method-list"]
${ContinueCheckoutLocator}    //button[@class="button-1 new-address-next-step-button"]
${CheckboxShipToTheSameAddressLocator}    //*[@id="ShipToSameAddress"]
${PhoneNumberCheckoutLocator}    //*[@id="BillingNewAddress_PhoneNumber"]
${ZipPostalCodeCheckoutLocator}    //*[@id="BillingNewAddress_ZipPostalCode"]
${Address_1Locator}    //*[@id="BillingNewAddress_Address1"]
${CityCheckoutLocator}    //*[@id="BillingNewAddress_City"]
${CountryCheckoutLocator}    //*[@id="BillingNewAddress_CountryId"]
${EmailCheckoutLocator}    //*[@id="BillingNewAddress_Email"]
${LastNameCheckoutLocator}    //*[@id="BillingNewAddress_LastName"]
${FirstNameCheckoutLocator}    //*[@id="BillingNewAddress_FirstName"]
${AddToCart_2Locator}    (//button[@class="button-2 product-box-add-to-cart-button"])[2]
