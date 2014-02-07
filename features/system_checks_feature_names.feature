Feature:  System checks feature names

  As a design team member
  I want the system to check feature names
  So that mistakes are caught and prevented

  Scenario Outline:  System names match
    Given a cucumber directory '<directory>'
    When the system checks names
    Then the system returns that there are <matched> matched features
    And the system returns that there are <unmatched> unmatched features

  Examples:
    | directory               | matched | unmatched |
    | test_directories/test01 | 1       | 0         |
    | test_directories/test02 | 0       | 1         |