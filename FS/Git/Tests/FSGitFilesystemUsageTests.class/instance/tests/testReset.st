
!FSGitFilesystemUsageTests methodsFor: 'tests' stamp: 'MaxLeske 8/12/2011 09:00'!
testReset
	self assert: workingCopy root children isEmpty.
	(workingCopy / 'afile') writeStreamDo: [ :stream | stream nextPutAll: 'blah' ].
	(workingCopy / 'aFolder') ensureDirectory.
	(workingCopy root resolve: 'aFolder/afile') writeStreamDo: [ :stream | ].
	
	self reset.
	self assert: workingCopy root children isEmpty! !
