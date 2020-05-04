*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  chrome

*** Keywords ***
Open Browser Test Setup  [Arguments]  ${URL}
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window