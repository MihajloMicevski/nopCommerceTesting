*** Settings ***
Library           SeleniumLibrary
Resource          ../PageObjects/Common.robot
Resource          ../PageObjects/Account.robot
Resource          ../PageObjects/LoginPage.robot

*** Keywords ***
Login With Valid Credentials
    [Arguments]    ${ValidEmail}    ${ValidPassword}
    Input Text    ${EmailLoginLocator}    ${ValidEmail}
    Input Password    ${PasswordLoginLocator}    ${ValidPassword}
    Click Button    ${ClickLoginButton}
    Element Text Should Be    ${LogOutLocator}    Log out

Click Change Password
    Click Element    ${ChangePasswordLocator}
    Page Title Validation    My account - Change password

Change The Old Password
    [Arguments]    ${OldPass}    ${NewPass}    ${ConfirmPass}
    Input Text    ${InputOldPasswordLocator}    ${OldPass}
    Input Text    ${InputNewPasswordLocator}    ${NewPass}
    Input Text    ${ConfirmNewPasswordLocator}    ${ConfirmPass}
    Click Button    ${ChangePasswordButtonLocator}
