
!PackfileTests methodsFor: 'helpers' stamp: 'MaxLeske 7/31/2011 16:57'!
hasOfsDeltaSignature 
	^ (packReader peek bitAnd: 2r01110000) = 2r01100000! !
