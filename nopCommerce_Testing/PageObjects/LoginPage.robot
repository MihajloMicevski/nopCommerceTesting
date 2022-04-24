*** Settings ***
Library           SeleniumLibrary
Resource          ../Keywords/Login.robot
Resource          ../Keywords/Common.robot
Resource          ../Resources/TestData.robot
Resource          ../Resources/RegisterTestData.robot
Resource          ../Resources/RegisterTestData.robot
Resource          LoginPage.robot
Resource          RegisterPage.robot

*** Variables ***
${ClickLogin}     //*[@class="ico-login"]
${ClickLoginButton}    //button[@class="button-1 login-button"]
${EmailLoginLocator}    //*[@id="Email"]
${LoginTextErrorMessage}    Login was unsuccessful. Please correct the errors and try again.
${LoginErrorMessageLocator}    //*[@class="message-error validation-summary-errors"]
${ButtonPasswordRecovery}    //button[@class="button-1 password-recovery-button"]
${TextPasswordRecovery}    Password recovery
${LocatorPasswordRecovery}    //*[@class="page-title"]
${ClickForgetPassword}    //span[@class="forgot-password"]
