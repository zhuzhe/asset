Feature: assest is a website 
		 in order to see the lastes assets loved in time for people

Scenario: I visit home page
	Given I am a registed user
	When I sign in
	  And I visit home page
	Then I can see favorite assets has favorited