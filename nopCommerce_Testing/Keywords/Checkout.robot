*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Checkout Name Last Name Email
    [Arguments]    ${Name}    ${LastName}    ${Email}
    Input Text    ${FirstNameCheckoutLocator}    ${Name}
    Input Text    ${LastNameCheckoutLocator}    ${LastName}
    Input Text    ${EmailCheckoutLocator}    ${Email}

Checkout Address Details And Phone
    [Arguments]    ${Country}    ${City}    ${Address}    ${ZIP}    ${Phone}
    Select From List By Value    ${CountryCheckoutLocator}    ${Country}
    Input Text    ${CityCheckoutLocator}    ${City}
    Input Text    ${Address_1Locator}    ${Address}
    Input Text    ${ZipPostalCodeCheckoutLocator}    ${ZIP}
    Input Text    ${PhoneNumberCheckoutLocator}    ${Phone}
