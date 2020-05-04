*** Settings ***
Resource  ../Common/Common_Keywords.robot
Resource  ../Common/Common_Login.robot


Test Setup  Open Browser Test Setup  ${url}


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
    File Get



