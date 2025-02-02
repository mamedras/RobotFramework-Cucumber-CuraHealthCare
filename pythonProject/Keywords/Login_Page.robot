*** Settings ***
Library  SeleniumLibrary
Variables  ../locators/Login.py
*** Keywords ***
Make appointment for the medical visit
            [Arguments]    ${appointment}
                Scroll Element Into View    ${appointment}
                Click Element    ${appointment}
Login Input with username and password
            [Arguments]     ${userelement}   ${Passwordelement}   ${user}       ${password}      ${click}
                Input Text    ${userelement}     ${user}
                Input Text    ${Password_Input}    ${password}
                Click Element    ${click}
Assertions
            [Arguments]  ${user_Login}      ${user_appoint}
                 Element Text Should Be   ${user_Login}      Login
                 Element Text Should Be   ${user_appoint}   Please login to make appointment.


