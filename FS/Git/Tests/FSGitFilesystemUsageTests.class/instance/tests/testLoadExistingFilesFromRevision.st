
!FSGitFilesystemUsageTests methodsFor: 'tests' stamp: 'CamilloBruni 7/19/2011 18:51'!
testLoadExistingFilesFromRevision
	self createSomeCommits.
	workingCopy := workingCopy parents first.
	
	self assert: (workingCopy root / 'file1') exists.
	self deny: (workingCopy root / 'dir1') exists.
	self deny: (workingCopy root / 'dir1' / 'file2') exists.! !
