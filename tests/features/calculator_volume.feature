Feature: Acceptance Test for the
  volume() function of Calculator
 
   Scenario: Calculate the volume of prism with dimensions "1" times "2" times "3"
    Given I am using the calculator
    When I input volume of prism with "1" times "2" times "3"
    Then I should see "6"

  Scenario: Calculate the volume of prism with dimensions "2" times "3" times "4"
    Given I am using the calculator
    When I input volume of prism with "2" times "3" times "4"
    Then I should see "24"

  Scenario: Calculate the volume of prism with dimensions "3" times "4" times "5"
    Given I am using the calculator
    When I input volume of prism with "3" times "4" times "5"
    Then I should see "60"
	
  Scenario Outline: Calculate the volume of a prism on our calculator
    Given I am using the calculator
    When I input volume of prism with "<input1>" times "<input2>" times "<input3>"
    Then I should see "<output>"

  Examples:
    | input1 | input2 | input3 | output |
    | 1      | 2      | 3      | 6      |
    | 4      | 5      | 6      | 120    |
    | 7      | 8      | 9      | 504    |
