*** Settings ***
Library           SeleniumLibrary
Resource          ../PageObjects/PLP.robot
Resource          ../PageObjects/Common.robot
Resource          ../Resources/TestData.robot

*** Keywords ***
Click Filter Memory 8 GB
    Click Element    ${FilterMemory_8GB_Locator}

Click Filter CPU Type i5
    Click Element    ${FilterCPU_i5_Locator}
