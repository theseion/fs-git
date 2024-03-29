
!FSGitFilesystemUsageTests methodsFor: 'tests' stamp: 'CamilloBruni 7/15/2011 17:37'!
testActiveBranch
	self assert: workingCopy branchName = 'master'.
	(workingCopy / 'aFile') writeStreamDo: [ :stream | ].
	self branch: 'branch 1' message: 'branch 1 commit'.
	self assert: workingCopy branchName = 'branch 1'.
	basicRepository updateHeadToBranch: 'master'.
	self assert: workingCopy branchName = 'master'.
	
	(workingCopy / 'anotherFile') writeStreamDo: [ :stream | ].
	self commit: 'a commit'.
	basicRepository 
		basicUpdateRef: basicRepository headFile 
		to: basicRepository head signature hexHash.
	self assert: workingCopy branchName isNil! !
