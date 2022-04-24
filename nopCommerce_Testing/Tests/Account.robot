*** Settings ***
Test Setup        Open App
Test Teardown     Close Browser
Library           SeleniumLibrary
Resource          ../Keywords/Account.robot
Resource          ../Keywords/Common.robot
Resource          ../PageObjects/Account.robot
Resource          ../PageObjects/Common.robot
Resource          ../Keywords/Login.robot

*** Test Cases ***
TC010_Change_the_old_password_from_My_acount_Change_password_section
    Click Login from HomePage
    Login With Valid Credentials    legendone@email.com    123456
    Sleep    3
    Click My Account
    Click Change Password
    Change The Old Password    123456    1234567    1234567
    Wait Until Element Is Visible    ${NotificationBarSuccess}
    Element Text Should Be    ${NotificationBarSuccess}    Password was changed

TC013_Check_if_My_product_reviews_link_leads_to_My_account_My_product_reviews_section
    Click Login from HomePage
    Login With Valid Credentials    petko@live.com    1234567
    Click My Account
    Click Element    ${ProductReviewsLocator}
    Page Title Validation    My account - My product reviews
    Element Text Should Be    ${MyProductReviewsNoDataLocator}    You haven't written any reviews yet
