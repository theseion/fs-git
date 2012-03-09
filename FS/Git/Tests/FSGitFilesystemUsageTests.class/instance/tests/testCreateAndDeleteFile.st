
!FSGitFilesystemUsageTests methodsFor: 'tests' stamp: 'MaxLeske 8/12/2011 08:57'!
testCreateAndDeleteFile
	self assert: workingCopy root children isEmpty.
	(workingCopy / 'newFile') writeStreamDo: [ :stream | stream nextPutAll: 'some content' ].
	self deny: workingCopy root children isEmpty.
	
	workingCopy delete: (workingCopy / 'newFile').
	self assert: workingCopy root children isEmpty.
	self deny: (workingCopy / 'newFile') exists! !
