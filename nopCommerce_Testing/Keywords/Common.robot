*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/TestData.robot
Resource          ../Resources/RegisterTestData.robot
Resource          ../PageObjects/Common.robot
Resource          ../PageObjects/PDP.robot
Resource          ../PageObjects/PLP.robot
Resource          ../PageObjects/WishListPage.robot
Resource          ../PageObjects/Shopping_cart_Page.robot
Resource          ../PageObjects/Account.robot

*** Keywords ***
Open App
    Open Browser    ${HomePage_URL}    ${Browser}
    Maximize Browser Window
    Title Should Be    ${PageTitle}

Page Title Validation
    [Arguments]    ${Title}
    Element Text Should Be    ${PageTitleLocator}    ${Title}

Product Title Validation
    [Arguments]    ${ProductTitle}
    Element Text Should Be    ${ProductTitleLocator}    ${ProductTitle}

Click Computers
    Click Element    ${ComputersLocator}
    Page Title Validation    Computers

Click Notebooks
    Click Element    ${NotebookLocator}
    Page Title Validation    Notebooks

Click Electronics
    Click Element    ${ElectronicsLocator}
    Page Title Validation    Electronics

Click Cell phones
    Click Element    ${CellPhonesLocator}
    Page Title Validation    Cell phones

Click Books
    Click Element    ${BooksLocator}
    Page Title Validation    Books

Click Wishlist
    Click Element    ${WishListLocator}
    Page Title Validation    Wishlist

Click Shopping Cart
    Click Element    ${ShoppingCartLocator}
    Page Title Validation    Shopping cart

Change Quantity
    [Arguments]    ${QuantityNumber}
    Input Text    ${QuantityFieldLocator}    ${QuantityNumber}

Click Clothing
    Click Element    ${ClothingLocator}
    Page Title Validation    Clothing

Click Apparel
    Click Element    ${ApparelLocator}
    Page Title Validation    Apparel

Checkout Button
    Click Element    ${CheckBoxTermsOfServiceLocator}
    Click Button    ${CheckoutLocator}

Click Software
    Click Element    ${SoftwareLocator}
    Page Title Validation    Software

Click My Account
    Click Element    ${MyAccountLocator}
    Page Title Validation    My account - Customer info
