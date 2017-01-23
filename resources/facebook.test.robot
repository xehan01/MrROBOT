*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${PAGE}         https://www.facebook.com/
${BROWSER}        Chrome
${DELAY}          0

*** Keywords ***
Open Browser To Base Page
    Open Browser    ${PAGE}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Base Page Should Be Open

Base Page Should Be Open
    Location Should Be    ${PAGE}
    Title Should Be    Facebook - Entra o regístrate

Login On Facebook
    input text  //*[@id="email"]  sephirothickhaos@hotmail.com
    click element  //*[@id="email"]
    input text  //*[@id="pass"]  Z0023497B12A8VAN
    click element  //*[@id="pass"]
    click element  u_0_q