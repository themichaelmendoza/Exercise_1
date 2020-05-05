*** Settings ***
Library  SeleniumLibrary
Library  CSVLibrary

*** Variables ***
${LoginBtn}         xpath=/html/body/div[4]/div[2]/div/div[1]/div/div/div[2]/form/button
${Username_TxtBox}  xpath=/html/body/div[4]/div[2]/div/div[1]/div/div/div[2]/form/div[1]/input
${Password_TxtBox}  xpath=/html/body/div[4]/div[2]/div/div[1]/div/div/div[2]/form/div[2]/div/input
${Stock_Tab}        xpath=/html/body/div[2]/nav[2]/div/div[3]/div[1]/ul/li[2]/a
${RTM_Dropdown}     xpath=/html/body/div[2]/nav[2]/div/div[3]/div[1]/ul/li[2]/div/a[1]

*** Keywords ***
#File Get
#    ${getFile} =  Get File  exer1.csv

Click LoginBtn
    Click Button  ${LoginBtn}

Enter Username
    [Arguments]                       ${username}
    Wait Until Page Contains Element  ${Username_TxtBox}
    Input Text                        ${Username_TxtBox}    ${username}

Enter Password
    [Arguments]                         ${password}
    Wait Until Page Contains Element    ${Password_TxtBox}
    Input Password                      ${Password_TxtBox}  ${password}

Click Stock
     Click Element  ${Stock_Tab}

Click RTM
     Click Element  ${RTM_Dropdown}
