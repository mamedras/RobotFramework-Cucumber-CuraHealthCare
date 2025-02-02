*** Settings ***
Library  SeleniumLibrary
Variables  ..//locators/HomePage.py
*** Keywords ***
Booking Assertion
        [Documentation]  The medical title assertion
        [Arguments]    ${appointment}
        Element Text Should Be    ${appointment}    Make Appointment
Choose the facility
            [Documentation]  the medical facility
            [Arguments]   ${Thedropdown}  ${TheValue}  ${redmission}
            Select From List By Value     ${Thedropdown}  ${TheValue}
            Click Element    ${redmission}
Healthcare Program
            [Documentation]  healthcare Program
            [Arguments]  ${Healthcare}
            Click Element    ${Healthcare}
Visit_date
            [Documentation]  specifying the visit date
            [Arguments]  ${visit the doctor}   ${The date}
                Input Text    ${visit the doctor}  ${The date}
Write Comment
            [Documentation]   Add your comment
            [Arguments]  ${my health status}  ${health_condition}    ${book}
            Input Text    ${my health status}   ${health_condition}
            Click Element    ${book}
