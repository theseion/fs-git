
!GitRepositoryTests methodsFor: 'tests' stamp: 'MaxLeske 7/23/2010 10:00'!
testDirDoesntExist
	repository := GitRepository basicNew.
	repository instVarNamed: 'reference' put: (reference resolve: 'newRepo').
	self deny: repository exists.
	repository gitInitialize.
	self assert: repository exists! !
