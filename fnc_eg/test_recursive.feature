Feature: Calculate factorial of a number
  Scenario: Small numbers factorial
    When number 5
    Then get 120 as result
    When number 2
    Then get 2 as result
    When number 1
    Then get 1 as result
    When number 6
    Then get 720 as result

  Scenario:  Special numbers factorial
    When number 0
    Then get 1 as result
    When number -10
    Then get 1 as result

  Scenario: Big numbers factorial
    When number 7
    Then get 5040 as result
    When number 10
    Then get 3628800 as result
    When number 9
    Then get 362880 as result
