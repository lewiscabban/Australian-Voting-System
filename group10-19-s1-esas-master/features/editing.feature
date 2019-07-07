Feature: Edit Existing Parties or Candidates Information
    In order to update candidates and parties with the latest information
    An AEC Commissioner 
    Should be able to edit their details
    
    Scenario: Editing a party's details
        Given I am on a party page
        When I follow "Edit"
        And I fill in "Name" with "TestParty"
        And I press "Update Party"
        Then I expect to see "TestParty"
        
    Scenario: Editing a candidate's details
        Given I am on the candidates page
        When I follow "New Candidate"
        And I fill in "Name" with "Jane Doe"
        And I select "Liberal" from "Party"
        And I fill in "Rank" with "3"
        And I press "Create Candidate"
        And I follow "Edit"
        And I fill in "Name" with "Jane Doe"
        And I select "Liberal" from "Party"
        And I fill in "Rank" with "3"
        And I press "Update Candidate"
        Then I expect to see "Jane Doe"
        