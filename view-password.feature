Feature: [Product Challenge]

    # S4
    Scenario: View Password

        Given the password to create account
        And I can hold the icon with the "eyes" symbol
        When I see the decrypted password
        Then I get confirmation about the characters I inserted
        But when I stop pressing
        And the password returns encrypted.