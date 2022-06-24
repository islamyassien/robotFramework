*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${browser}  chrome
${url}  https://stage-maxim.transim.com/Loader/New.aspx


*** Test Cases ***
RegTest
    open browser   ${url}  ${browser}
    maximize browser window

    sleep   2

    set selenium speed    2seconds    #0 second by default - wait for all elements

    set selenium timeout    2seconds      #5seconds by default - wait for condition
    wait until element contains    Welcome to the EE-Sim Design     #5seconds by default

    set selenium implicit wait  2seconds   #0 second by default












*** Keywords ***