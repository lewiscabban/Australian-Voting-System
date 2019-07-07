Feature: Allow user to submit a valid senate voter
  In order to gather votes
  A voter
  Should be able to submit a valid vote
  
  Scenario: User can submit a valid vote to the database
    Given I am on a voter page
    And I select "1" from "pvote[1]"
    And I select "2" from "pvote[2]"
    And I select "3" from "pvote[3]"
    And I select "4" from "pvote[4]"
    And I select "5" from "pvote[5]"
    And I select "6" from "pvote[6]"
    And I press "Submit(party)"
    Then I should see "thankyou for your vote!"
    
    Scenario: User can submit a valid below the line vote to the database
    Given I am on a voter page
    And I select "1" from "cvote[1]"
    And I select "2" from "cvote[2]"
    And I select "3" from "cvote[3]"
    And I select "4" from "cvote[4]"
    And I select "5" from "cvote[5]"
    And I select "6" from "cvote[6]"
    And I select "7" from "cvote[7]"
    And I select "8" from "cvote[8]"
    And I select "9" from "cvote[9]"
    And I select "10" from "cvote[10]"
    And I select "11" from "cvote[11]"
    And I select "12" from "cvote[12]"
    And I press "Submit(candidate)"
    Then I should see "thankyou for your vote!"
    
  Scenario: Prevent user from submitting both above the line and below the line
    Given I am on a voter page
    Then I should see "Submit(party)" button 
    Then I should see "Submit(candidate)" button
    
    
  Scenario: Prevent user from submitting without having enough selected candidates
    Given I am on a voter page
    And I select "1" from "pvote[1]"
    And I select "2" from "pvote[2]"
    And I select "3" from "pvote[3]"
    And I select "4" from "pvote[4]"
    And I select "5" from "pvote[5]"
    And I press "Submit(party)"
    Then I should see "Error: vote not valid"
    
    
  Scenario: Prevent user from submitting with gaps in selections
    Given I am on a voter page
    And I select "1" from "pvote[1]"
    And I select "2" from "pvote[2]"
    And I select "3" from "pvote[3]"
    And I select "4" from "pvote[4]"
    And I select "6" from "pvote[5]"
    And I select "7" from "pvote[6]"
    And I press "Submit(party)"
    Then I should see "Error: vote not valid"
