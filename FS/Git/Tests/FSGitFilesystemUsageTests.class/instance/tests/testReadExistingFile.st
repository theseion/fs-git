
!FSGitFilesystemUsageTests methodsFor: 'tests' stamp: 'CamilloBruni 7/15/2011 15:57'!
testReadExistingFile
	self createSomeCommits.
	self assert: (workingCopy / 'file1') exists.
	self assert: (workingCopy / 'file1') readStream contents asString = 'content'! !
