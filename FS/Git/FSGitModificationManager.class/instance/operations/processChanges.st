
!FSGitModificationManager methodsFor: 'operations' stamp: 'CamilloBruni 7/15/2011 19:34'!
processChanges
	self processBlobs.
	self processCreations.
	self processDeletions.
	self storeTrees.! !
