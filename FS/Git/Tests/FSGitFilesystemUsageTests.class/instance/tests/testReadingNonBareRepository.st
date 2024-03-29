
!FSGitFilesystemUsageTests methodsFor: 'tests' stamp: 'Camillobruni 8/17/2011 19:57'!
testReadingNonBareRepository
	| ref repositoryEntries |
	ref := FSFilesystem memory / 'repo'.
	fsRepository := FSGitRepository on: ref.
	workingCopy := fsRepository head.
	self createSomeCommits.
	
	self deny: fsRepository head root children isEmpty.
	self assert: fsRepository head root children size = 2.
	
	self assert: ref children size = 1.
	self assert: ref children first basename = '.git'.
	
	repositoryEntries := #(
		'HEAD'
		'objects'
		'info'
		'refs').
	self assert: ((ref children first children collect: [ :each | each basename ]) includesAllOf: repositoryEntries)! !
