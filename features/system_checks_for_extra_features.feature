Feature: System checks for extra features

  Scenario Outline:
    Given a cucumber directory '<directory>'
    When the system checks for extra features
    Then there are no extra features

  Examples:
    | directory               |
    | test_directories/test01 |