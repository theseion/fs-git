
!GitTestCase methodsFor: 'running' stamp: 'MaxLeske 8/12/2011 10:03'!
setUp
	"Setting these variables for the tests ensures that no FillInTheBlankMorph will
	stall the building of the image and that tests don't require user interaction."
	GitStamp ensureDefaultValues! !
