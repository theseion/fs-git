
!GitObjectLoaderTests methodsFor: 'class-tests' stamp: 'Camillobruni 8/17/2011 19:57'!
testFor
	| repository loader |
	repository := GitRepository on: FSFilesystem memory root.
	loader := GitObjectLoader for: repository.
	self assert: (loader instVarNamed: 'repository')= repository! !
