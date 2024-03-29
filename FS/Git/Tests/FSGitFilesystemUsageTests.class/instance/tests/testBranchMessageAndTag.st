
!FSGitFilesystemUsageTests methodsFor: 'tests' stamp: 'MaxLeske 8/12/2011 08:57'!
testBranchMessageAndTag
	self createSomeCommits.
	self assert: workingCopy message = 'second commit'.
	
	(workingCopy / 'aChange') writeStreamDo: [ :stream | stream nextPutAll: 'changed' ].
	workingCopy
		branch: 'new branch'
		message: 'changed one file'
		andTag: 'test fork'.
		
	self assert: workingCopy branchName = 'new branch'.
	self assert: basicRepository branches size = 2.
	self 
		shouldnt: (basicRepository branches at: 'master')
		raise: Error.
	self
		shouldnt: (basicRepository branches at: 'new branch')
		raise: Error.
	self assert: workingCopy parents first message = 'second commit'.
	self assert: workingCopy message = 'changed one file'.
	self assert: workingCopy tagNames size = 1.
	self assert: workingCopy tagNames first = 'test fork'.
	self assert: (fsRepository tagNamed: 'test fork') = workingCopy! !
