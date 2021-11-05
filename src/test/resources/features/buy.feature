Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given สินค้า "Bread" with price 20.50 exists
    And สินค้า "Jam" with price 80.00 exists
    And สินค้า "Snack" with price 15.00 exists
    And สินค้า "Milk" with price 40.00 exists
    And สินค้า "Water" with price 10.00 exists

Scenario: Buy one product
    When ฉันซื้อ "Bread" with quantity 2
    Then ราคารวม should be 41.00

Scenario: Buy multiple products
    When ฉันซื้อ "Bread" with quantity 2
    And ฉันซื้อ "Jam" with quantity 1
    Then ราคารวม should be 121.00

Scenario: Buy three products
    When ฉันซื้อ "Snack" with quantity 3
    And ฉันซื้อ "Milk" with quantity 2
    And ฉันซื้อ "Water" with quantity 1
    Then ราคารวม should be 135.00


