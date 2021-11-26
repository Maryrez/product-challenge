Feature: [Product Challenge]

    # S1
    Scenario: Password Validation Service


    This service should be used to validate the passwords you entered on the registration page. The passwords accepted to create the account, must follow these rules.


    Rule: Be at least 8 characters long.

        Example: Receive the password value as parameter
            Given the received value has 8 or more characters
            Then return the message: “This password is accept”.


        Example: Receive the password value as parameter
            Given the value received is less than 8
            When the password isn’t valid
            Then return the message: “This password is invalid,
        the password must contain at least 8 characters”.


    Rule: Be case-sensitive.

        Example: Receive the password value as parameter
            Given the value received is case sensitive
            Then return the message: “This password is accept”.


        Example: Receive the password value as parameter
            Given the value received isn't case sensitive
            When the password value does not contain at least
            one uppercase and one lowercase letter
            Then return the message: “This password must contain at least one upper and one lower case letter”.