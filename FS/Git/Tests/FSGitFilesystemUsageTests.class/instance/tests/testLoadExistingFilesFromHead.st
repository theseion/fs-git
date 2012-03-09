
!FSGitFilesystemUsageTests methodsFor: 'tests' stamp: 'CamilloBruni 7/19/2011 18:51'!
testLoadExistingFilesFromHead
	self createSomeCommits.
	self assert: (workingCopy root / 'file1') exists.
	self assert: (workingCopy root / 'dir1') exists.
	self assert: (workingCopy root / 'dir1' / 'file2') exists.
	self deny: (workingCopy root / 'dir1' / 'file1') exists.! !
