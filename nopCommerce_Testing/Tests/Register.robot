*** Settings ***
Test Setup        Open App
Test Teardown     Close Browser
Library           SeleniumLibrary
Library           String
Resource          ../Resources/TestData.robot
Resource          ../Resources/RegisterTestData.robot
Resource          ../PageObjects/RegisterPage.robot
Resource          ../Keywords/Common.robot
Resource          ../Keywords/Register.robot
Resource          ../PageObjects/Common.robot

*** Variables ***

*** Test Cases ***
TC006_New_user_with_password_and_empty_confirm_password_field
    Click Element    ${ClickRegister}
    Register First And Last Name    ${FirstName}    ${LastName}
    Date Of Birth    ${BirthDay}    ${BirthMonth}    ${BirthYear}
    Email    ${Email}
    Company Name    ${CompanyName}
    Select Checkbox    ${NewsletterChekbox}
    Register Password And Confirm Password    ${Password}    ${EMPTY}
    Click Button    ${RegisterButton}
    Element Text Should Be    ${ErrorTextMessageValidationError}    ${ErrorTextMessagePasswordIsRequired}

TC0011_New_user_with_empty_LastName_field
    Click Element    ${ClickRegister}
    Register First And Last Name    ${FirstName}    ${EMPTY}
    Date Of Birth    ${BirthDay}    ${BirthMonth}    ${BirthYear}
    Email    ${Email}
    Company Name    ${CompanyName}
    Select Checkbox    ${NewsletterChekbox}
    Register Password And Confirm Password    ${Password}    ${Password}
    Click Button    ${RegisterButton}
    Element Text Should Be    ${LastNameError}    ${LastNameTextError}
