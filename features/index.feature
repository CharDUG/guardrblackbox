Feature: Homepage
  In order to know the website is running
  As a website user
  I need to be able to view the site title and login

  Scenario: Viewing the page title
    Given I am on the homepage
    Then I should get a "200" HTTP response
    And I should see "Guardr"

  Scenario: Viewing the development resources
    Given I am on the homepage
    Then I should see the heading "Development"
    And I should see "View pending patches"
    And I should see "Repository viewer"
    And I should see "View commits"
    And I should see "Report a security issue"
    And I should see "View change records"

  Scenario: Viewing the ownership
    Given I am on the homepage
    Then I should see "Posted by deekayen"

  Scenario: Viewing the sponsorship
    Given I am on the homepage
    Then I should see "by Classic Graphics"
    And I should see the link "Classic Graphics"

  Scenario: Clicking the repository viewer link
    Given I am on the homepage
    And I click "Repository viewer"
    And I should see the text "summary"
    And I should see the link "shortlog"
    And I should see the link "log"
    And I should see the link "commit"
    And I should see the link "commitdiff"
    And I should see the link "tree"
