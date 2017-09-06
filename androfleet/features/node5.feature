Feature: Chat Room feature

  Scenario: 1- Simple chat message - Receiving
	Given I activate WiFi Direct
	Then I wait up to 60 seconds for "Available" to appear
	Then I wait for 5 seconds
	Then I press text "Discover"
	Then I should see "finding peers"

	Then I wait up to 60 seconds for "N192168491" to appear
	Then I touch the "N192168491" text
	Then I wait for the "Connect" button to appear
	Then I press the "Connect" button
	Then I should see "Connecting to"
	#Then I wait up to 60 seconds for "Start Chatting" to appear
	#Then I touch the "Start Chatting" text
	Then I take a screenshot
	Then I wait up to 120 seconds for "Hi Harry" to appear
	Then I enter text "Hi, I am Richard, How are you?" into field with id "edit_input"
	Then I press the "Send" button
	Then I wait up to 120 seconds for "Hi Sarra" to appear
	Then I take a screenshot
