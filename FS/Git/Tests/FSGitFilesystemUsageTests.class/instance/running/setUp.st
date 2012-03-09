
!FSGitFilesystemUsageTests methodsFor: 'running' stamp: 'Camillobruni 8/17/2011 19:57'!
setUp
	| ref |
	super setUp.
	ref := FSFilesystem memory / 'testRepo'.
	basicRepository := GitRepository on: ref.
	fsRepository := FSGitRepository  on: ref.
	workingCopy := fsRepository head! !
