
!FSGitFilesystemUsageTests methodsFor: 'tests' stamp: 'CamilloBruni 7/15/2011 15:57'!
testReadExistingModifiedFile
	self createSomeCommits.
	(workingCopy / 'file1') writeStreamDo: [ :stream | stream nextPutAll: 'changed it' ].
	self assert: (workingCopy / 'file1') readStream contents asString = 'changed it'! !
