
!FSGitFilesystemUsageTests methodsFor: 'commit tests' stamp: 'CamilloBruni 7/15/2011 16:25'!
testRevisionChange
	| oldRevision newRevision |
	oldRevision := workingCopy revision.
	self assert: oldRevision isNil.
	
	(workingCopy / 'afile') writeStreamDo: [ :stream | ].
	self commit: 'a commit'.
	oldRevision := workingCopy revision.
	self deny: oldRevision isNil.
	
	(workingCopy / 'anotherfile') writeStreamDo: [ :stream | ].
	self commit: 'commit 2'.
	newRevision := workingCopy revision.
	self deny: oldRevision = newRevision.
	self assert: (newRevision parents includes: oldRevision)! !
