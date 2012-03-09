
!FSGitFilesystemUsageTests methodsFor: 'commit tests' stamp: 'CamilloBruni 7/15/2011 16:25'!
testParents
	workingCopy parents isEmpty.
	
	(workingCopy / 'aFile') writeStreamDo: [ :stream | ].
	self commit: 'a commit'.
	self assert: workingCopy parents isEmpty.
	
	(workingCopy / 'anotherfile') writeStreamDo: [ :stream | ].
	self commit: 'commit number 2'.
	self deny: workingCopy parents isEmpty.
	self assert: workingCopy parents size = 1! !
