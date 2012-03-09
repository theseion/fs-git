
!FSGitFilesystemUsageTests methodsFor: 'tests' stamp: 'MaxLeske 8/12/2011 08:55'!
testEquals
	| head |
	head := fsRepository head.
	self assert: head name isEmpty.
	self assert: workingCopy name isEmpty.
	self assert: head name = workingCopy name.
	self deny: head = workingCopy.
	
	(workingCopy / 'foo') writeStreamDo: [ :stream | stream nextPutAll: 'some content' ].
	self commit: 'a commit'.
	self assert: workingCopy name isEmpty not.
	self deny: head name = workingCopy name.
	self deny: head = workingCopy.
	
	head := workingCopy.
	self assert: head = workingCopy! !
