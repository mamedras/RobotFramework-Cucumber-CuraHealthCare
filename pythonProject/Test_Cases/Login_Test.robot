*** Settings ***
Resource   ../Keywords/Login_Page.robot
Resource   ..//Setup/Test_Base.robot
Variables  ../locators/Login.py
*** Test Cases ***
Gherkin scenario
      Given Make appointment
      When Assert the title
      Then Login with Valid Creeds
*** Keywords ***
Make appointment
            [Documentation]  Click on the appointment
            [Setup]    Launching the Browswer
                Make appointment for the medical visit  ${make_appointment}
Assert the title
            [Documentation]  Assert the wrong creeds
                Assertions                 ${Title_Login}     ${Title_Appointment}
Login with Valid Creeds
            [Documentation]  Login with Valid Creeds
                    Login Input with username and password      ${username_input}     ${Password_Input}     John Doe         ThisIsNotAPassword       ${Login_Btn}



