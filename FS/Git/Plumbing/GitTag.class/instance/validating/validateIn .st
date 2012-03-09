
!GitTag methodsFor: 'validating' stamp: 'CamilloBruni 6/22/2011 04:11'!
validateIn: aGitRepository
	self validate.
	aGitRepository objectWithSignature: self object signature.! !
