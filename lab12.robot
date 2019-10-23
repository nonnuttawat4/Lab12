*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOMEPAGE}    https://www.google.co.th
${BROWSER}    Chrome
${CS URL}    www.cs.kku.ac.th

*** Test Cases ***
Go To Homepage
    Open Browser    ${HOMEPAGE}    ${BROWSER}
	Input Text    q    ${CS URL}
	Submit Form
	Wait Until Page Contains    CS KKU
    [Teardown]    Close Browser