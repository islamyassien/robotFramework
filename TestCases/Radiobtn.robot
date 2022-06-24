*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${browser}  chrome
${url}  https://stage-maxim.transim.com/Loader/New.aspx


*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    2seconds

    #selecting radio btn
    select radio button    IsolatedOpt  IsolatedYes
    select radio button    IsolatedOpt  IsolatedNo

    #check box
    select checkbox    Control-Output2_select
    unselect checkbox     Control-Output1_select

*** Keywords ***
