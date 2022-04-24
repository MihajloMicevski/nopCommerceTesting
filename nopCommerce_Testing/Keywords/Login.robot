*** Settings ***
Library           SeleniumLibrary
Resource          ../PageObjects/LoginPage.robot
Resource          Common.robot

*** Keywords ***
Login Email
    [Arguments]    ${LoginEmail}
    Input Text    ${EmailLoginLocator}    ${LoginEmail}

Click Login from HomePage
    Click Element    ${ClickLogin}
    Page Title Validation    Welcome, Please Sign In!

Click Forget Password
    Click Element    ${ClickForgetPassword}
