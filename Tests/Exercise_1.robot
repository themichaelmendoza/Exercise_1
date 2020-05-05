*** Settings ***
Resource  ../Common/Common_Keywords.robot
Resource  ../Common/Common_Login.robot
Resource  ../Common/TableData.robot


Test Setup  Common_Keywords.Open Browser Test Setup  ${url}


*** Test Cases ***
TC-001
    Enter Username  ${username}
    Enter Password  ${passsword}
    Sleep  3s
    Click LoginBtn
    Sleep  5s
    Click Stock
    Sleep  3s
    Click RTM
   # File Get
   Get Column Values    Stock
   Get Column Values    Open
   Get Column Values    High
   Get Column Values    Low
   Get Column Values    Last
   Get Column Values    Volume



