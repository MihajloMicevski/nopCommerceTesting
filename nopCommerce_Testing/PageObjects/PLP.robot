*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${GoToCompareListLocator}    //a[text()='product comparison']
${AddToCompareButton_3}    (//button[@class="button-2 add-to-compare-list-button"])[3]
${AddToCompareButton_2}    (//button[@class="button-2 add-to-compare-list-button"])[2]
${CellPhonesLocator}    //*[@title="Show products in category Cell phones"]
${ElectronicsLocator}    //a[text()='Electronics ']
${CompareNotificationBarLocator}    //*[@class="bar-notification success"]
${FilterMemory_8GB_Locator}    //*[@id="attribute-option-9"]
${FilterCPU_i5_Locator}    //*[@id="attribute-option-6"]
${NotebookLocator}    //*[@title="Show products in category Notebooks"]
${ComputersLocator}    //a[text()='Computers ']
