Feature: the voter can view the results of the election
    In order to view results
    A user
    Should be able to view the ranking of the first few candidates

    Scenario: Results show a valid vote to the database
		Given I am on a voter page
		And I select "1" from "pvote[1]"
		And I select "2" from "pvote[2]"
		And I select "3" from "pvote[3]"
		And I select "4" from "pvote[4]"
		And I select "5" from "pvote[5]"
		And I select "6" from "pvote[6]"
		And I press "Submit(party)"
		And I should see "thankyou for your vote!"
		And I follow "Home"
		And I follow "Results"
		Then I should see "Bill Shorten, with 1 votes"
        
    Scenario: A results page with a list exists
        Given I am on the home page
		And I follow "Results"
		Then I should see "First"
