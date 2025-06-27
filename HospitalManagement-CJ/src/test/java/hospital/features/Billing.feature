Feature: Billing
  Scenario: Generate a bill for a patient
    Given patient "Alice Khan" has completed her consultation and prescriptions
    And I am on the "Billing" page
    When I add the following charges:
      | Item             | Amount |
      | Consultation Fee | 500    |
      | Medicines        | 300    |
    And I click the "Generate Bill" button
    Then a total bill of "800" should be generated for "Alice Khan"
