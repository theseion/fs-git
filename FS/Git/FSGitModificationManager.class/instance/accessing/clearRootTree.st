
!FSGitModificationManager methodsFor: 'accessing' stamp: 'CamilloBruni 7/15/2011 18:05'!
clearRootTree
	cache workingDirectory children do: [ :reference|
		reference deleteAll].
	
	self 
		initializeWith: repository
		with: cache
		for: nil! !
