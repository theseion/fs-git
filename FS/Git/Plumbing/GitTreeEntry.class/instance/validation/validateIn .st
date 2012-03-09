
!GitTreeEntry methodsFor: 'validation' stamp: 'CamilloBruni 6/22/2011 03:55'!
validateIn: aGitRepository
	self validate.
	aGitRepository objectWithSignature: self objectSignature! !
