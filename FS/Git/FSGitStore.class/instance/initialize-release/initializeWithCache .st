
!FSGitStore methodsFor: 'initialize-release' stamp: 'CamilloBruni 7/19/2011 18:01'!
initializeWithCache: aFilessytem
	super initialize.
	cache := aFilessytem.
	cacheStore := cache store.
	modManager := FSGitModificationManager 
		initializeWith: repository
		with: cache
		for: revision.! !
