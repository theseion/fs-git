
!FSGitFilesystemUsageTests methodsFor: 'commit tests' stamp: 'CamilloBruni 8/1/2011 16:44'!
testRevisionChangeWithReload
	| oldRevision newRevision |
	oldRevision := workingCopy revision.
	self assert: oldRevision isNil.
	
	(workingCopy / 'afile') writeStreamDo: [ :stream | ].
	self commit: 'a commit'.
	oldRevision := workingCopy revision.
	self deny: workingCopy revision isNil.
	
	(workingCopy / 'anotherfile') writeStreamDo: [ :stream | ].
	self commit: 'commit 2'.
	newRevision  := workingCopy revision.
	self deny: oldRevision = workingCopy revision.
	self assert: (newRevision parents includes: oldRevision)! !
