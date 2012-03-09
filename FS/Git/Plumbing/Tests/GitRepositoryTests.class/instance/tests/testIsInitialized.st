
!GitRepositoryTests methodsFor: 'tests' stamp: 'Camillobruni 8/17/2011 19:58'!
testIsInitialized
	repository := GitRepository basicNew.
	repository instVarNamed: 'reference' put: (FSFilesystem memory / 'test.git').
	self deny: repository isInitialized.
	
	repository gitInitialize.
	self assert: repository isInitialized! !
