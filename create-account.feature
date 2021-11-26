Feature: [Product Challenge]

        # S3
        Scenario: Create Account.

                To create a user account you must go to the registration page, which has 4 fields for value input, as described in the body of the story.

                Given I insert informations
                And I have First Name
                And I have Last Name
                And I have Email
                And I have Password
                When I will mark the option
                for accept Terms of Services and Privacy Policy
                Then I have an account.


        To create a user account should be use the services describes in the story #S1 and #S2.


        Rule: Before saving the email call the service created in story #s2


                Example: The value received is an email
                        Given I start creating an account
                        When I insert an email
                        Then the email validation service is called


        Rule: Before saving the password call the service created in story #s1


                Example: The value received is a password
                        Given I start creating an account
                        When I insert a password
                        Then the password validation service is called



                To create a user account you must make it mandatory to mark the flag agreeing to the terms of service and privacy policies.


        Rule:  The value received is true


                Example: To finish the created account
                        Given I go to finish my created account
                        When I agree to the terms of service and privacy policy
                        Then I finish the registration


        Rule:  The value received is false


                Example: To finish the created account
                        Given I go to finish my created account
                        When I don't agree to the terms of service and privacy policy
                        Then return the message: 
                        "It is mandatory to read and agree to the terms of service and privacy policy".