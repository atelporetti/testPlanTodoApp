@taskboard 
Feature: Create Task

    Background: Login
        Given user is in login page
        When user enters "aaxelporetti@gmail.com" as email in email field and "atel12345" as password in password field and user clicks on 'Login' button
        Then user enters the application

    @createTask @run
    Scenario: Task create succesfull when required input is completed
        Given user is in Task Board panel
        When user clicks on Create button
        Then user is able to see the create task modal window
        When user completes the requiered field with the following information: "Schedule next interview"
        And user clicks on create button
        Then user is able to see the new task created in 'To Do' column