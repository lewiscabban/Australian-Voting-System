# Feature: Modify vote before submitting
#   In order to change his choice before submitting the vote
#   A voter
#   Should be able to modify his voting preferences before submitting
#     Background: canidates in database
#       Given the following canidates exist:
#         |name         |party
#         |Bill Shorten |Labor    
    
# Scenario: Modify vote
#   Given I am on the vote page
#   And I should see "Bill Shorten"
#   When I select "3" from "Bill Shorten"
#   And I select "2" from "Bill Shorten"
#   And I press "submit"
#   Then I should see "2"
  