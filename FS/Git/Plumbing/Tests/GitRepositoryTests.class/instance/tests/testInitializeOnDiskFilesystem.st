
!GitRepositoryTests methodsFor: 'tests' stamp: 'Camillobruni 8/17/2011 19:59'!
testInitializeOnDiskFilesystem
	reference := FSFilesystem disk workingDirectory / 'newRepo'.
	repository := GitRepository basicNew initializeOn: reference.
	self assert: (repository baseDir filesystem isKindOf: FSFilesystem).
	self assert: repository baseDir = (reference / '.git').
	reference deleteAll.
	self deny: reference exists! !
