
!GitRepositoryTests methodsFor: 'tests' stamp: 'Camillobruni 8/17/2011 19:58'!
testInitializeOnMemoryFilesystem
	reference := FSFilesystem memory / 'newRepo'.
	repository := GitRepository basicNew initializeOn: reference.
	self assert: (repository baseDir filesystem isKindOf: FSFilesystem).
	self assert: repository baseDir = (reference / '.git')! !
