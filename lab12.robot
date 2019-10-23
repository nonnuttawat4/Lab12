*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOMEPAGE}    www.google.com
${BROWSER}    Chrome
${CS URL}    http://www.cs.kku.ac.th/

*** Test Cases ***
Go To Homepage
    Open Browser    ${CS URL}    ${BROWSER}
	Input Text    q    ${CS URL}
	Submit Form    tsf
    [Teardown]    Close Browser