*** Settings ***
Library    SeleniumLibrary


*** Variables ***

${browser}  chrome
${url}  https://stage-maxim.transim.com/Loader/New.aspx

*** Test Cases ***
Handling dpdown and list
    open browser    ${url}  ${browser}
    maximize browser window

    set selenium speed    2seconds

     click element   //*[@id="landing_main_text"]/table/tbody/tr[1]/td[2]/a
     ${"Part_num"}  set variable    id:tags
     input text  ${"Part_num"}    Max
    click element   xpath:/html/body/ul/li[1]/a





*** Keywords ***


