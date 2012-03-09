
!GitRepositoryTests methodsFor: 'tests' stamp: 'MaxLeske 7/23/2010 10:02'!
testDirExistsButNotInitialized
	reference := reference resolve: 'newRepo'.
	repository := GitRepository basicNew.
	repository instVarNamed: 'reference' put: reference.
	reference createDirectory.
	self deny: repository exists.
	repository gitInitialize.
	self assert: repository exists! !
