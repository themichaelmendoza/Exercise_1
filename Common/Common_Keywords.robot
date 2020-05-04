*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}      chrome
${URL}          https://www.investagrams.com/Login/
${username}     rueljsaunar@yahoo.com
${passsword}    77gsitechteam

*** Keywords ***
Open Browser Test Setup
    [Arguments]   ${URL}
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window