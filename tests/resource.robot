*** Settings ***
Documentation     A resource file with reusable keywords and variables.
Library  Selenium2Library

*** Variables ***
${DOMAIN}         www.google.com
${BROWSER}        chrome
${DELAY}          0
${WEB URL}      http://${DOMAIN}/


*** Keywords ***
Open Browser To Google Search Page
    Open Browser    ${WEB URL}     ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Google Search Page Should Be Open

Google Search Page Should Be Open
    Title Should Be    Google

Input Searchtext
    [Arguments]    ${searchtext}
    Input Text  name=q  ${searchtext}

Submit Search
    Click Button  name=btnG