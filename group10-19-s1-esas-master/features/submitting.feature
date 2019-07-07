Feature: Submit New Parties or Candidates
    In order to vote for some candidate in some party
    An AEC Commissioner 
    Should add that party or candidate to the database first
    Background: voters in database
      
    Scenario: Submitting a new party
        Given I am on the parties page
        When I follow "New Party"
        And I fill in "Name" with "TestParty"
        And I press "Create Party"
        Then I expect to see "Party was successfully created."
        
    Scenario: Trying to submit a new party without inputting a name
        Given I am on the new parties page
        And I press "Create Party"
        Then I expect to see "Error, please fill in all input boxes before re-submitting"
        
    
        
        
    Scenario: Submitting a new candidate
        Given I am on the candidates page
        When I follow "New Candidate"
        And I fill in "Name" with "Jane Doe"
        And I select "Liberal" from "Party"
        And I fill in "Rank" with "3"
        And I press "Create Candidate"
        Then I expect to see "Candidate was successfully created."
        
    Scenario: Submitting a new candidate without entering data into all input boxes
        Given I am on the new candidates page
        When I fill in "Name" with "Jane Doe"
        And I press "Create Candidate"
        Then I expect to see "Error, please fill in all input boxes before re-submitting."
      