Feature: [Product Challenge]

    # S6
    Scenario: Sign In


        To sign in there should be fields to enter the information I have registered.

        Given I insert informations
        And I have Email
        And I have Password
        When I request the loading
        Then I can have acces sucessfull


    This page should be use the services describes in the story S2.


    Rule: Validation the email call the service created in story #s2


        Example: The value received is an email registraded
            Given I insert an email
            When the service validates that you have an account
            Then I can proceed with the session


        Example: The value received is an unregistered e-mail
            Given I insert an email
            When the service validates that you don't have an account
            Then return the message: "Please create account".