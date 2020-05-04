*** Settings ***
Resource  ../Common/Common_Keywords.robot
Resource  ../Common/Common_Login.robot
Test Setup  Open Browser Test Setup  https://www.investagrams.com/Login/


*** Test Cases ***
TC-001
    Enter Username  rueljsaunar@yahoo.com
    Enter Password  77gsitechteam
    Sleep  3s
    Click LoginBtn
    Sleep  5s
    Click Stock
    Sleep  3s
    Click RTM
    File Get




