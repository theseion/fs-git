
!FSGitStore methodsFor: 'delegate' stamp: 'CamilloBruni 7/15/2011 19:16'!
growFile: path to: anInteger
	self flag: 'TODO: check if we need to intercept here and update the modification manager and the cache'.
	^ cacheStore growFile: path to: anInteger! !
