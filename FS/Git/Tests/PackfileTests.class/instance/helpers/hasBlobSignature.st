
!PackfileTests methodsFor: 'helpers' stamp: 'MaxLeske 7/30/2011 16:06'!
hasBlobSignature
	^ (packReader peek bitAnd: 2r0111000) = 2r00110000! !
