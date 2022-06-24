*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${browser}  chrome
${url}  https://stage-maxim.transim.com/Loader/New.aspx


*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    MAXIM >> EE-SIM™ >> New
    click element    xpath://*[@id="landing_main"]/div[3]/a
    close browser


*** Keywords ***


