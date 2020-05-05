*** Settings ***
Documentation    Get Data From Table
Library          Collections
Library          String
Library          SeleniumLibrary
#Library          CSVLibrary
#Library          CSVLib
Library  OperatingSystem

*** Variables ***

*** Keywords ***
Get Column Values
    [Arguments]  ${columnName}
    ${columnIndex}      Set Variable         ${None}
    ${rowCount}=        Get Element Count    //table/tbody/tr
    Sleep       1s
    ${headerCount}      Get Element Count    //table/thead/tr/td
    @{columnValues}     Create List
    FOR     ${i}    IN RANGE    1       ${headerCount}+1
    \       ${columnIndex}      Set Variable        ${i}
    \       ${temp}     Get Text        //table/thead/tr/td[${i}]
    \       Exit For Loop If    "${columnName}" in "${temp}"
    END
    ${rowCount}     Get Element Count       //table/tbody/tr
    FOR     ${i}    IN RANGE    1       ${rowCount}+1
    \       ${temp}     Get Text        //table/tbody/tr[${i}]/td[${columnIndex}]
    \       Append To List             ${columnValues}     ${temp}
    END
    Log To Console      columnValues for ${columnName}: ${columnValues}
    Append To File    Exercise_1/exer1.csv    ${columnName}: ${columnValues}
    [return]            ${columnValues}



