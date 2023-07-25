

Feature: Register Page Test
  As user I want to verify the register page into nop commerce website
  @sanity
  Scenario: User Should Navigate To Register Page Successfully
    Given I am on homepage
    When I Click on Register Link
    Then I should  Verify "Register" text
  @sanity
    Scenario: verify That First Name LastName Email Password And ConfirmPassword Fields Are Mandatory
      Given I am on homepage
      When I Click on Register Link
      And I Click on "REGISTER" button
      And I Verify the error message "First name is required."
      And I verify the error message "Last name is required."
      And I get the error message "Email is required."
      And I will get the error message "Password is required."
      And I verify the error messages "Password is required."


  @sanity

  Scenario:Verify That User Should Create Account Successfully
        Given I am on homepage
        When I Click on Register Link
        And I Select gender "Female"
        And I Enter firstname "Sita"
        And I Enter lastname "Ram"
        And I Select day "5"
        And I  Select month "August"
        And I  Select year "2001"
        And I  Enter email "siyaram83@gmail.com"
        And I  Enter password "siyaram99"
        And I  Enter Confirm Password "siyaram99"
        And I Click on "REGISTER" button
        Then I should Verify message "Your registration completed"
