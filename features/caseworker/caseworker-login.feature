Feature: Caseworker login

Scenario: Caseworker Invalid username login failed
Given I have caseworker login credentials
And I am not already logged in as a caseworker
And I login with incorrect username
Then I fail to login (incorrect username)

Scenario: Caseworker Invalid password login failed
Given I have caseworker login credentials
And I am not already logged in as a caseworker
When I login with incorrect password
Then I fail to login (incorrect password)

Scenario: Caseworker can logout
Given I have caseworker login credentials
And I am still authenticated as a caseworker
When I logout as a caseworker
Then I am prompted to login as a caseworker