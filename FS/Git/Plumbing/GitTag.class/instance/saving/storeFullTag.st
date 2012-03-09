
!GitTag methodsFor: 'saving' stamp: 'MaxLeske 7/24/2010 15:25'!
storeFullTag
	repository 
		updateRef: repository tagsDir / self name 
		to: (repository storeObject: self) signature! !
