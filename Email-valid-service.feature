Feature: [Product Challenge]

    # S2
    Scenario: Email Validation Service


    This service should be used to validate the E-mail you entered on the registration page. To validate the e-mail inserted in the registration page follow these rules

    Rule: cannot be an existing value.

        Example: E-mail isn’t in the database
            Given the value received as an email
            When I insert an e-mail to create account,
            should be validated if this e-mail already exists in the database
            Then will proceed with account creation.


    Rule: Existing value in the database

        Example: E-mail already exist in the database
            Given the value received as an email
            When I insert an e-mail to create account,
            should be validated if this e-mail already exists in the database
            And found the value already entered in the database
            Then return the message: “E-mail already registered, sign in”.