*** Settings ***
Test Setup        Open App
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/Common.robot
Resource          ../Keywords/Register.robot
Resource          ../Resources/TestData.robot
Resource          ../Resources/RegisterTestData.robot
Resource          ../PageObjects/LoginPage.robot
Resource          ../Resources/LoginTestData.robot
Resource          ../Resources/LoginTestData.robot
Resource          ../PageObjects/Common.robot

*** Test Cases ***
TC007_Valid_Email_And_Empty_Password
    Click Login from HomePage
    Login Email    ${LoginEmail}
    Click Button    ${ClickLoginButton}
    Element Should Contain    ${LoginErrorMessageLocator}    ${LoginTextErrorMessage}

TC009_Check_if_the_forget_password_link_is_working_correctly
    Click Login from HomePage
    Click Forget Password
    Element Text Should Be    ${LocatorPasswordRecovery}    ${TextPasswordRecovery}
    Login Email    ${LoginEmail}
    Click Button    ${ButtonPasswordRecovery}
