*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/TestData.robot

*** Variables ***
${SearchLocator}    //*[@id="small-searchterms"]
${SearchDropDownLocator}    //*[@class="ui-menu-item"]
${SearchButtonLocator}    //button[@class="button-1 search-box-button"]
${SearchPageTitleText}    Search
${TitleTextHP_Spectre_XT_Pro_UltraBook}    HP Spectre XT Pro UltraBook
${ProductTitleLocatorSearchPage}    //*[@class="product-title"]
${SearchPageSearchButtonLocator}    //button[@class="button-1 search-button"]
${SearchManufacturerListLocator}    //*[@id="mid"]
${Chekbox_ Search_In_product_descriptions}    //*[@id="sid"]
${Chekbox_ Automatically_search_sub_categories}    //*[@id="isc"]
${SearchCategoryListLocator}    //*[@id="cid"]
${SearchKeywordLocator}    //*[@id="q"]
${AdvanceSearchLocator}    //*[@id="advs"]
