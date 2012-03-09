
!GitTagTests methodsFor: 'running' stamp: 'Camillobruni 8/17/2011 19:58'!
setUp
	super setUp.
	repository := GitRepository on: (FSFilesystem memory / 'testRepo')! !
