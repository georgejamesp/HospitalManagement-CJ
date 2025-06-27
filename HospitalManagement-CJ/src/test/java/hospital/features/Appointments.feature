Feature: Appointments
  Scenario: Schedule a doctor appointment
    Given patient "Alice Khan" is registered
    And I am on the "Appointments" page
    When I select doctor "Dr. James" for "Alice Khan"
    And I choose date "2025-07-01" and time "10:00 AM"
    And I click the "Schedule" button
    Then an appointment for "Alice Khan" with "Dr. James" at "10:00 AM" on "2025-07-01" should be saved
