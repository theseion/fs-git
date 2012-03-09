
!GitTree methodsFor: 'validation' stamp: 'CamilloBruni 6/22/2011 04:12'!
validateIn: aGitRepository
	self validate.
	aGitRepository objectWithSignature: self signature.
	entries do: [ :item|
		item validateIn: aGitRepository ].! !
