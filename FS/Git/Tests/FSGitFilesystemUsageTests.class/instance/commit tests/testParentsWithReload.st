
!FSGitFilesystemUsageTests methodsFor: 'commit tests' stamp: 'CamilloBruni 7/15/2011 16:25'!
testParentsWithReload
	workingCopy parents isEmpty.
	
	(workingCopy / 'afile') writeStreamDo: [ :stream | ].
	self commit: 'a commit'.
	workingCopy := fsRepository head.
	self assert: workingCopy parents isEmpty.
	
	(workingCopy / 'anotherfile') writeStreamDo: [ :stream | ].
	self commit: 'commit number 2'.
	workingCopy := fsRepository head.
	self deny: workingCopy parents isEmpty.
	self assert: workingCopy parents size = 1! !
