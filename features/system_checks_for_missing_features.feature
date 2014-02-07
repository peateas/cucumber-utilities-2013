Feature:  System checks for missing features

  Scenario Outline:
    Given a cucumber directory '<directory>'

  Examples:
    | directory               | count |
    | test_directories/test01 | 1     |