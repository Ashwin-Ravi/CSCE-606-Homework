Feature: Manage categories
  As a blog administrator
  In order to categorize articles
  I want to be able to manage categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    When I follow "Categories"

  Scenario: Link Intact
    Then I should see "Categories"
    And I should see "Permalink"
    And I should see "General"

  Scenario: create categories
    Given I am on the new categories page
    And I fill in "category_name" with "new1"
    And I fill in "category_keywords" with "new_key"
    And I fill in "category_description" with "new_desc"
    And I press "Save"
    Then I should see "new1"
    
    