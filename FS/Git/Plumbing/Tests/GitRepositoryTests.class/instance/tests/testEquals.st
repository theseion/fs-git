
!GitRepositoryTests methodsFor: 'tests' stamp: 'Camillobruni 8/17/2011 19:57'!
testEquals
	| repo2 |
	repo2 := GitRepository on: FSFilesystem memory workingDirectory .
	self deny: repository = repo2.
	
	repo2 := GitRepository on: repository baseDir.
	self assert: repository = repo2! !
