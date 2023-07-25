@smoke

Feature: Login Test
  As user I want to login into nop commerce website


  Scenario: User should navigate to login page successfully
    Given I am on homepage
    When I Click on login link
    Then I should verify that "Welcome, Please Sign In!" message display

    Scenario: verify The ErrorMessage With InValidCredentials
      Given I am on homepage
      When I Click on login link
      And I Enter EmailId "siyaram1@gmail.com"
      And I  Enter Password "siyaram90"
      And I  Click on Login Button
      Then I should  Verify that the Error message

    Scenario: VerifyThatUserShouldLogOutSuccessFully()
      Given I am on homepage
      When I Click on login link
      And I Enter EmailId "siyaram@gmail.com"
      And I  Enter Password "siyaram99"
      And I  Click on Login Button
      And I  Click on LogOut Link
      Then I should  Verify that LogIn Link Display

