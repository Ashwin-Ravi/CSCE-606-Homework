Feature: create movies

  As a movie buff
  So that I can manage movie list
  I want to be able to create movies

Background: movies in database

  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |

Scenario: create a movie
  When I am on the home page
  And  I follow "Add new movie"
  And I fill in "Title" with "Batman"
  Then I press "Save Changes"
  And I should see "Batman was successfully created."
  
Scenario: create a movie
  When I am on the home page
  And  I follow "Add new movie"
  And I fill in "Title" with "Lion King"
  Then I press "Save Changes"
  And I should see "Lion King was successfully created."