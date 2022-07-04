Feature: I can get json from a website
  Scenario: Trying to connect to a website and get info
    Given website https://www.literoo.com
    Then Show Json
