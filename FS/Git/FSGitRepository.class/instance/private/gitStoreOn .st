
!FSGitRepository methodsFor: 'private' stamp: 'Camillobruni 8/17/2011 19:57'!
gitStoreOn: aGitCommit
	^ FSGitStore memory
		repository: repository;
		revision: aGitCommit;
		yourself! !
