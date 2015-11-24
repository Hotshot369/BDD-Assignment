Feature: Acceptance Test for the
  factorial() function of Calculator
 
   Scenario: Calculate 0 factorial on our calculator
    Given I am using the calculator
    When I input "0" factorial
    Then I should see "1"

  Scenario: Calculate 3 factorial on our calculator
    Given I am using the calculator
    When I input "3" factorial
    Then I should see "6"

  Scenario: Calculate 4 factorial on our calculator
    Given I am using the calculator
    When I input "4" factorial
    Then I should see "24"
	
  Scenario Outline: Factorial of a number on our calculator
    Given I input "<input>" factorial
    Then I should see "<output>"

  Examples:
    | input | output |
    | 3     | 6      |
    | 4     | 24     |
    | 2     | 2      |
    | 0     | 1      |
