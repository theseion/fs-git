
!GitRepositoryTests methodsFor: 'tests' stamp: 'Camillobruni 8/17/2011 19:58'!
testGitInitializeOnReferenceWithSubDirs
	reference := FSFilesystem memory referenceTo: 'alpha/beta/testRepo.git'.
	repository := GitRepository basicNew.
	repository instVarNamed: 'reference' put: reference.
	self 
		shouldnt: [repository gitInitialize]
		raise: FSDirectoryDoesNotExist
		description: 'The reference of the repository points to a directory'
			, 'inside of a parent directory that does not exist.'
			, 'Create the parent directory first.'! !
