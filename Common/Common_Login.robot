*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

File Get
    ${getFile} =  Get File  exer1.csv

Click LoginBtn
    Click Button  xpath=/html/body/div[4]/div[2]/div/div[1]/div/div/div[2]/form/button

Enter Username  [Arguments]  ${username}
    Wait Until Page Contains Element  xpath=/html/body/div[4]/div[2]/div/div[1]/div/div/div[2]/form/div[1]/input
    Input Text  xpath=/html/body/div[4]/div[2]/div/div[1]/div/div/div[2]/form/div[1]/input  ${username}

Enter Password  [Arguments]  ${password}
    Wait Until Page Contains Element  xpath=/html/body/div[4]/div[2]/div/div[1]/div/div/div[2]/form/div[2]/div/input
    Input Password  xpath=/html/body/div[4]/div[2]/div/div[1]/div/div/div[2]/form/div[2]/div/input  ${password}

Click Stock
     Click Element  xpath=/html/body/div[2]/nav[2]/div/div[3]/div[1]/ul/li[2]/a

Click RTM
     Click Element  xpath=/html/body/div[2]/nav[2]/div/div[3]/div[1]/ul/li[2]/div/a[1]


