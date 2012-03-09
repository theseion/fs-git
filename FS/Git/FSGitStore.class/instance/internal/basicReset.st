
!FSGitStore methodsFor: 'internal' stamp: 'CamilloBruni 7/19/2011 17:46'!
basicReset
	self flag: 'TODO: explicitely pass a revision/commit to the basicreset'.
	self flag: 'TODO: merge with ModificationManager >> clearRootTree'.
	
	cache workingDirectory children do: [ :reference|
		reference deleteAll].
	self repository: repository.
	self initializeWithCache: cache.
	! !
