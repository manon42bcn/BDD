Feature: Calculate factorial of a number
  Scenario Outline: <type> numbers factorial
    When number <input>
    Then get <result> as result

    Examples:
      | type  | input | result  |
      | small | 2     | 2       |
      | small | 5     | 120     |
      | zero  | 0     | 1       |
