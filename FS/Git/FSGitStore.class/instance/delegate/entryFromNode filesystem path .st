
!FSGitStore methodsFor: 'delegate' stamp: 'CamilloBruni 7/15/2011 19:16'!
entryFromNode: anObject filesystem: aFilesystem path: aPath	
	self flag: 'TODO: check if we need to intercept here and update the modification manager and the cache'.
	^ cacheStore entryFromNode: anObject filesystem: aFilesystem path: aPath! !
