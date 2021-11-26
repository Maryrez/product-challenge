Feature: [Product Challenge]

    # S5
    Scenario: Direct to Registration

        Given access, the page logs in
        When I don't have an account
        And I can be directed
        And I click on the link with the "Sing Up" information.
        Then I will be redirected to the create account page.