Feature: Prescriptions
  Scenario: Add a prescription for a patient
    Given "Dr. James" has seen patient "Alice Khan"
    And I am on the "Prescriptions" page
    When I add the following medicines:
      | Medicine        | Dosage    | Duration |
      | Amoxicillin 500 | 1 tablet  | 7 days   |
      | Ibuprofen       | 2 tablets | 5 days   |
    And I click the "Save Prescription" button
    Then the prescription should be stored in "Alice Khan"'s medical record
