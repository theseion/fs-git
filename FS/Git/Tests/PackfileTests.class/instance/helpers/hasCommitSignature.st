
!PackfileTests methodsFor: 'helpers' stamp: 'MaxLeske 7/30/2011 14:44'!
hasCommitSignature
	^ (packReader peek bitAnd: 2r01110000) = 2r00010000! !
