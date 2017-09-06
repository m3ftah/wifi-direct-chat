Feature: Chat Room feature

  Scenario: 1- Simple chat message - Sending
	Given I activate WiFi Direct
	Then I wait up to 60 seconds for "Available" to appear
	Then I don't see the text "Disconnect"
	When I take an image

	Then I wait up to 120 seconds for "Start Chatting" to appear
	Then I touch the "Start Chatting" text
	Then I take a screenshot
	Then I wait for 30 seconds
	Then I enter text "Hi" into field with id "edit_input"
	Then I press the "Send" button
	Then I wait up to 30 seconds for "Hi" to appear
	Then I wait up to 60 seconds for "Hi, I am Smith, How are you?" to appear
	Then I enter text "Hi Smith" into field with id "edit_input"
	Then I press the "Send" button
	Then I wait up to 60 seconds for "Hi, I am Bill, How are you?" to appear
	Then I enter text "Hi Bill" into field with id "edit_input"
	Then I press the "Send" button
	Then I wait up to 60 seconds for "Hi, I am John, How are you?" to appear
	Then I enter text "Hi John" into field with id "edit_input"
	Then I press the "Send" button
	Then I wait up to 60 seconds for "Hi, I am Harry, How are you?" to appear
	Then I enter text "Hi Harry" into field with id "edit_input"
	Then I press the "Send" button
	Then I wait up to 60 seconds for "Hi, I am Richard, How are you?" to appear
	Then I enter text "Hi Richard" into field with id "edit_input"
	Then I press the "Send" button
	Then I wait up to 60 seconds for "Hi, I am Travis, How are you?" to appear
	Then I enter text "Hi Travis" into field with id "edit_input"
	Then I press the "Send" button
	Then I wait up to 60 seconds for "Hi, I am James, How are you?" to appear
	Then I enter text "Hi James" into field with id "edit_input"
	Then I press the "Send" button
	Then I wait up to 60 seconds for "Hi, I am Linda, How are you?" to appear
	Then I enter text "Hi Linda" into field with id "edit_input"
	Then I press the "Send" button
	Then I wait up to 60 seconds for "Hi, I am Sarra, How are you?" to appear
	Then I enter text "Hi Sarra" into field with id "edit_input"
	Then I press the "Send" button
	Then I take a screenshot
