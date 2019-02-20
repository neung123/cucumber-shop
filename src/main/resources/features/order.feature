Feature: Order products
    As a manager
    I want to check the number of products in the warehouse, so that I will know if the order is correct or not.

Background:
    Given a product Bread with price 20.0 with 50 remaining quantity
    And a product Jam with price 80.0 with 20 remaining quantity

Scenario: Buy one product
    When I buy Bread with quantity 2
    Then a product Bread should be 48 remaining quantity

Scenario: Buy multiple product
    When I buy Bread with quantity 2
    And I buy Jam with quantity 1
    Then a product Bread should be 48 remaining quantity
    And a product Jam should be 19 remaining quantity

Scenario: Buy multiple product with large quantity
    When I buy Bread with quantity 42
    And I buy Jam with quantity 19
    Then a product Bread should be 8 remaining quantity
    And a product Jam should be 1 remaining quantity

