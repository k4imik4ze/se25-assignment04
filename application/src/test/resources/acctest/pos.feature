Feature: Points of Sale Management
  This feature allows users to create and modify points of sale (POS).

  Scenario: Insert and retrieve two POS
    Given an empty POS list
    When I insert POS with the following elements
      | name                   | description             | type             | campus | street          | houseNumber | postalCode | city     |
      | Lidl (Nürnberger Str.) | Vending machine at Lidl | VENDING_MACHINE  | ZAPF   | Nürnberger Str. | 3a          | 95448      | Bayreuth |
      | New Cafe               | Fancy new cafe          | CAFE             | MAIN   | Teststraße      | 99          | 12345      | New City |
    Then the POS list should contain the same elements in the same order

  Scenario: Update one of three POS
    Given an empty POS list
    When I insert POS with the following elements
      | name                   | description             | type             | campus | street              | houseNumber | postalCode | city     |
      | Lidl (Nürnberger Str.) | Vending machine at Lidl | VENDING_MACHINE  | ZAPF   | Nürnberger Str.     | 3a          | 95448      | Bayreuth |
      | CrazySheep             | Fancy new cafe          | CAFE             | MAIN   | Andreas-Maisel-Weg  | 2           | 95447      | Bayreuth |
      | Cafeteria              | Mensa                   | CAFE             | MAIN   | Universitätsstraße  | 30          | 95447      | Bayreuth |
    And I update the description of the POS "CrazySheep" to "Cafeteria in RWI"
    Then the POS "CrazySheep" should have the description "Cafeteria in RWI"