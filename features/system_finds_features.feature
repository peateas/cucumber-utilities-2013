Feature:  System finds features
  As a utility
  I want to the list of features
  So that I can run checks on them

  Scenario Outline:
    Given a cucumber directory '<directory>'
    When a utility asks for a list of features
    Then the system returns the <count> features

  Examples:
    | directory               | count |
    | test_directories/test01 | 1     |