
!PackfileTests methodsFor: 'helpers' stamp: 'MaxLeske 8/2/2011 19:40'!
isEntryRefDelta
	^ self hasRefDeltaSignature and: [
		self verifyOldFormatDeltification ]! !
