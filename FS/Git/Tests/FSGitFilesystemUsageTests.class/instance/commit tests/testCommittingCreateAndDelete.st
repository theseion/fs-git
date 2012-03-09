
!FSGitFilesystemUsageTests methodsFor: 'commit tests' stamp: 'MaxLeske 8/12/2011 08:53'!
testCommittingCreateAndDelete
	self assert: workingCopy root children isEmpty.
	(workingCopy / 'newFile') writeStreamDo: [ :stream | stream nextPutAll: 'some content' ].
	
	workingCopy delete: (workingCopy / 'newFile').
	
	self commit: 'commit 1'.! !
