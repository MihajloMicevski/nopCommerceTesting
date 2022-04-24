*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../PageObjects/RegisterPage.robot

*** Keywords ***
Register First And Last Name
    [Arguments]    ${FirstName}    ${LastName}
    Input Text    ${RegisterFirstName}    ${FirstName}
    Input Text    ${RegisterLastName}    ${LastName}

Date Of Birth
    [Arguments]    ${BirthDay}    ${BirthMonth}    ${BirthYear}
    Select From List By Value    ${RegisterDateOfBirthDay}    ${BirthDay}
    Select From List By Value    ${RegisterDateOfBirthMonth}    ${BirthMonth}
    Select From List By Value    ${RegisterDateOfBirthYear}    ${BirthYear}

Email
    [Arguments]    ${Email}
    Input Text    ${RegisterEmail}    ${Email}

Company Name
    [Arguments]    ${CompanyName}
    Input Text    ${RegisterCompany}    ${CompanyName}

Register Password And Confirm Password
    [Arguments]    ${arg1}    ${arg2}
    Input Password    ${RegisterPassword}    ${Password}
    Input Password    ${RegisterConfirmPassword}    ${EMPTY}
