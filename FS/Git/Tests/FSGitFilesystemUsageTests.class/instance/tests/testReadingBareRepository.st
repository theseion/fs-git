
!FSGitFilesystemUsageTests methodsFor: 'tests' stamp: 'Camillobruni 8/17/2011 19:57'!
testReadingBareRepository
	| ref repositoryEntries |
	ref := FSFilesystem memory / '.git'.
	fsRepository := FSGitRepository on: ref.
	workingCopy := fsRepository head.
	self createSomeCommits.
	
	self deny: fsRepository head root children isEmpty.
	self assert: fsRepository head root children size = 2.
	
	repositoryEntries := #(
		'HEAD'
		'objects'
		'info'
		'refs').
	self assert: ((ref children collect: [ :each | each basename ]) includesAllOf: repositoryEntries)! !
