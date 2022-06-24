*** Settings ***
Library    SeleniumLibrary


*** Variables ***

${browser}  chrome
${url}  https://stage-maxim.transim.com/Loader/New.aspx

*** Test Cases ***
AlertandFrame
    open browser    ${url}  ${browser}
    maximize browser window

    set selenium implicit wait  4seconds
    select radio button    IsolatedOpt  IsolatedYes
    click element    xpath://*[@id="landing_main"]/div[3]/a
    select frame    searchPartsIsoIframe
    click link    MAX17690
    click button    Proceed
    title should be    Maxim EE-SIM :: Login


*** Keywords ***


