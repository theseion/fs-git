
!PackfileTests methodsFor: 'helpers' stamp: 'MaxLeske 7/30/2011 16:09'!
hasRefDeltaSignature
	^ (packReader peek bitAnd: 2r01110000) = 2r01110000! !
