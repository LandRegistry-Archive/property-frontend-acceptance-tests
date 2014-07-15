@webuitest
Feature: Create a Register from a received application 

Scenario: Processing Absolute Freehold First Registration with 1 proprietor (3)
Given I have received an application for a first registration
And I am on the first registration entry screen
When I enter a Property Address
And I choose a tenure of Freehold
And I select class of Absolute
And I enter a valid price paid
And I enter 1 proprietor
And I Register the transaction
Then the first registration is registered

Scenario: Processing Good Leasehold First Registration with 1 proprietor (4)
Given I have received an application for a first registration
And I am on the first registration entry screen
When I enter a Property Address
And I choose a tenure of Freehold
And I select class of Good
And I enter a valid price paid
And I enter 1 proprietor
And I Register the transaction
Then the first registration is registered

Scenario: Processing possessory Freehold First Registration with 2 proprietors (5)
Given I have received an application for a first registration
And I am on the first registration entry screen
When I enter a Property Address
And I choose a tenure of Freehold
And I select class of Possessory
And I enter a valid price paid
And I enter 2 proprietors
And I Register the transaction
Then the first registration is registered

Scenario: Processing Qualified Freehold First Registration with 1 proprietor and no price paid (6)
Given I have received an application for a first registration
And I am on the first registration entry screen
When I enter a Property Address
And I choose a tenure of Freehold
And I select class of Qualified
And I enter 1 proprietor
And I Register the transaction
Then the first registration is registered

Scenario: Trying to process an Absolute Freehold First Registration with 1 proprietor and invalid price paid (7)
Given I have received an application for a first registration
And I am on the first registration entry screen
When I enter a Property Address
And I choose a tenure of Freehold
And I select class of Absolute
And I enter an invalid price paid
And I enter 1 proprietor
And I Register the transaction
Then an error page will be displayed

Scenario: Trying to process a first registration with no proprietor (2)
Given I have received an application for a first registration
And I am on the first registration entry screen
When I enter a Property Address
And I choose a tenure of Freehold
And I select class of Absolute
And I enter a valid price paid
When I Register the transaction
Then an error page will be displayed

Scenario: Testing Title Number is generated and valid (1)
Given I have received an application for a first registration
When I am on the first registration entry screen
Then a Title Number is displayed
And Title Number is formatted correctly

Scenario: Trying to process a first registration with no address (8)
Given I have received an application for a first registration
And I am on the first registration entry screen
When I choose a tenure of Freehold
And I select class of Absolute
And I enter a valid price paid
And I enter 1 proprietor
When I Register the transaction
Then an error page will be displayed
