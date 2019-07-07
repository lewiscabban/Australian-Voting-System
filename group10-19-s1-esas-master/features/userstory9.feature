Feature: the voter can view Patries and their candadites 
    In order to view movie items
    A user
    Should be able to view more information about existing movies
        
    Scenario Outline:
        Given I am on the home page
        When I see "<party>"
        Then I see "<candidate1>"
        Then I see "<candidate2>"
        Then I see "<candidate3>"
        
    Examples:
        | party                               | candidate1     | candidate2          | candidate3         |
        | Labor                               | Bill Shorten   | Penny Wong          | Don Farrell        |
        | Liberal                             | Scott Morrison | John Alexander      | Angie Bell         |
        | The Greens                          | Larissa Waters | Janet Rice          | Sarah Hanson-Young |
        | Australian Conservatives            | Cory Bernardi  | Dennis Hood         | Robert Brokenshire |
        | One Nation                          | Pauline Hanson | Stephen Andrew      | Malcolm Roberts    |
        | Shooters, Fishers and Farmers Party | Mark Banasiak  | Philip Donato       | Helen Dalton       |
        | United Australia Party              | Clive Palmer   | Peter Walter        | Brian Burston      |
        | Australian Marijuana Party          | JJ McRoach     | Michael Balderstone | Andrew Kavasilas   |
