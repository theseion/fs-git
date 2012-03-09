
!GitTag methodsFor: 'saving' stamp: 'MaxLeske 8/12/2011 09:03'!
storeLightWeightTag
	repository 
		updateRef: repository tagsDir / self name 
		to: self object signature! !
