
!PackfileTests methodsFor: 'helpers' stamp: 'MaxLeske 8/2/2011 19:42'!
isEntryOfsDelta
	^ self hasOfsDeltaSignature and: [
		self verifyNewFormatDeltification ]! !
