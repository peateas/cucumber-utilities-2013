Feature:  System transforms names
  As a utility
  I want to transform between feature and file names
  So that I can check find files and features

  Scenario Outline:  System transforms feature into file name
    Given a feature '<feature>'
    When utility asks to transform feature name
    Then utility gets a file name '<file name>'
  Examples:
    | feature              | file name                    |
    | Agent does something | agent_does_something.feature |

  Scenario Outline:  System transforms feature into feature name
    Given a file name '<file name>'
    When utility asks to transform file name
    Then utility gets a feature name '<feature>'
  Examples:
    | feature              | file name                    |
    | Agent does something | agent_does_something.feature |
