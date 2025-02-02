*** Settings ***
Resource   ..//Setup/Test_Base.robot
Resource   ..//Keywords/Home_Page.robot
Variables  ..//locators/HomePage.py
Resource    ..//Keywords/Login_Page.robot
Variables   ..//locators/Login.py
*** Test Cases ***
Gherkin scenario
       Given Login with valid creeds
       AND Booking_title
       THEN Facility
       AND Choose the healthcare system
       THEN Choose the healthcare system
       AND Write the visit_date
       THEN write a comment about your health condition

*** Keywords ***
Login with valid creeds
            [Documentation]     Login with valid creeds
            [Setup]     Launching the Browswer
            Login Input with username and password      ${username_input}     ${Password_Input}     John Doe         ThisIsNotAPassword       ${Login_Btn}
Booking_title
            [Documentation]    asserting the booking title
             Booking Assertion      ${Appointment_Title}
Facility
            [Documentation]  Choose the facility system
            Choose the facility     ${Combo_Facility}  ${Hongkong_CURA_Healthcare_Center}   ${checkBox}
Choose the healthcare system
           [Documentation]   The healthcare system
           Healthcare Program     ${Healthcare_Program}
Write the visit_date
            [Documentation]  medical visit date
            Visit_date  ${visit_date}  10/7/2010
write a comment about your health condition
            [Documentation]  health condition
                Write Comment   ${comment}  im suffering from fever since a week ago           ${Book_Appointment}
                [Teardown]   Closing The Browser
