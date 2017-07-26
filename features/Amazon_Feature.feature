Feature: Amazon Search functionality
  Scenario: Users can search for a specific item on Amazon
    Given a user goes to Amazon
    When they search for pens
    Then amazon should return results for pens

  Scenario: Users can search for any item on Amazon
    Given using Amazon
    When  search for "pens"
    Then amazon returns results for "pens"