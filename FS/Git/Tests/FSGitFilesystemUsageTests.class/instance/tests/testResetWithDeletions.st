
!FSGitFilesystemUsageTests methodsFor: 'tests' stamp: 'CamilloBruni 7/15/2011 15:58'!
testResetWithDeletions
	| ref |
	self createSomeCommits.
	ref := workingCopy / 'file1'.
	self assert: ref exists.
	
	ref delete.
	self deny: ref exists.
	
	self reset.
	self assert: ref exists! !
