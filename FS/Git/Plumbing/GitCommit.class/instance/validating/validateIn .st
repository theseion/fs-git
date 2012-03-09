
!GitCommit methodsFor: 'validating' stamp: 'CamilloBruni 6/22/2011 04:36'!
validateIn: aGitRepository
	self loadLazily.
	self validate.
	aGitRepository objectWithSignature: self tree signature! !
