*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/TestData.robot
Resource          ../Resources/RegisterTestData.robot
Resource          ../Keywords/Register.robot
Resource          ../Keywords/Common.robot

*** Variables ***
${ClickRegister}    //*[@class="ico-register"]
${RegisterFirstName}    id:FirstName
${RegisterCompany}    id:Company
${NewsletterChekbox}    id:Newsletter
${RegisterButton}    id:register-button
${ErrorTextMessageValidationError}    //*[@class="field-validation-error"]
${ErrorTextMessagePasswordIsRequired}    Password is required.
${RegisterLastName}    id:LastName
${RegisterDateOfBirthYear}    name:DateOfBirthYear
${RegisterDateOfBirthMonth}    name:DateOfBirthMonth
${RegisterDateOfBirthDay}    name:DateOfBirthDay
${RegisterEmail}    id:Email
${RegisterConfirmPassword}    id:ConfirmPassword
${RegisterPassword}    id:Password
${LastNameTextError}    Last name is required.
${LastNameError}    id:LastName-error
