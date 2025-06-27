Feature: Discharge Summary
  Scenario: Save a discharge summary
    Given patient "Alice Khan" is ready for discharge
    And I am on the "Discharge Summary" page
    When I enter the following summary:
      | Diagnosis       | Treatment Given | Follow-up Advice |
      | Viral Infection | Medication      | Rest for 5 days  |
    And I click the "Save Summary" button
    Then the discharge summary should be saved for "Alice Khan"
