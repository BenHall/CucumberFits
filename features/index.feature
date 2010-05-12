Feature: Index of features
  To see which features are present in the store, to read, edit and run them
  As a user
  I want to see the index

  Scenario: I visit the home page and can see some features in the index
    Given 2 feature files exist
    When I visit the "home" page
    Then I should see the "Navigation" element
      And the "Navigation" element should contain a "ul" element
      And the "Navigation" ul should contain 2 items
      And I should see "wibble" in the "Navigation" list
      And I should see "foo" in the "Navigation" list

  Scenario Outline: I can add new features from any page, via the index
    Given that I am signed in as "pete"
      And I have the "add new feature" permission
    When I visit the "<page_name>" page
    Then I should see the "Navigation" element
      And the "Navigation" element should contain the "add feature" control
      And the "add feature" control should start the feature editor
      And the feature editor should be in its default state

    Examples:
    | page_name |
    | home |