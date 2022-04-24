*** Settings ***
Library           SeleniumLibrary
Resource          ../PageObjects/Search.robot
Resource          TestData.robot

*** Variables ***
${SearchTextApple}    apple
${SearchText_ASUS_N551JK-XO076H_LAPTOP_BigLetters}    ASUS N551JK-XO076H LAPTOP
${SearchText_asus_n551jk-xo076h_laptop_SmallLetters}    asus n551jk-xo076h laptop
${SearchTextLaptop}    Laptop
${SearchRandomText}    eccdvs
