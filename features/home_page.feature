Feature: Home page
  To use the tool
  As a user
  I want to see something intuitive on the home page to guide me

  Scenario: I visit the home page for the very first time; I see getting-started
    Given 0 feature files exist
    When I visit the "home" page
    Then I should see "Getting Started" in the page text
      And I should see the "Getting Started" form

