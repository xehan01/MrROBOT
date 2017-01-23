*** Settings ***
Resource          ../resources/facebook.test.robot

*** Test Cases ***
Google Opens
    Open Browser To Base Page
    Base Page Should Be Open

Search in google
    Login On Facebook
