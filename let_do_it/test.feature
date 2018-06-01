#Date: 11/17/2017
#Comment: Step 3 skipped scenarios
#TestData: Eligible users for LAWW, OptumRx and MyUHC
@HSID11 @US868732 @US868732_OptumRx @OptumRx 
Feature: US868732 Core-OptumRx Signin SkippedStep3 

@OptumRx @TC224908 @TC224911 @TC224912 
Scenario:Verify if OptumRx user is able to view Step 3 page when user logs in without completing step 3 during registration - email 
	Given member "Member_Rx_US868732_1" does not pre-exist in PDB and Extremescale 
	Given I get the following details for the member "Member_Rx_US868732_1" from xml file 
		| FirstName    |
		| LastName     |
		| DOB          |
		| SubscriberID |
		| Zip          |
	When I am at RX unauthenticated home page 
	And click on Register link in RxUnauthenticatedHomePage 
	Then I should be at Enter personal information section pag 
	When I enter valid FirstName into First name fiel 
	And I enter valid LastName into Last name field 
	And I enter valid DOB into Date of birth field 
	And I enter valid Zip into Zip code field 
	And I enter valid memberid into Member ID field 
	And I click on "Continue" button 
	Then I should be at Create account section page 
	When I enter valid username into Username field for registration 
	And I enter valid "Password@1" into Password field 
	And I enter valid "Password@1" into Confirm password field 
	And I enter valid email into Email fiel 
	And I enter valid email into Confirm email field 
	And I select the security type as "Security questions" 
	And I select security question1 as "What was your first phone number?" 
	And I select security answer1 as "number1" 
	And I select security question2 as "What is your best friend's name
    And I select security answer2 as "name1" 
	