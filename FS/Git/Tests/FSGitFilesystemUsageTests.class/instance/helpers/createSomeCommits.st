
!FSGitFilesystemUsageTests methodsFor: 'helpers' stamp: 'MaxLeske 8/12/2011 08:58'!
createSomeCommits
	(workingCopy / 'file1') writeStreamDo: [ :stream | stream nextPutAll: 'content' ].
	self commit: 'first commit'.
	(workingCopy / 'dir1') ensureDirectory.
	(workingCopy / 'dir1' / 'file2') writeStreamDo: [ :stream | stream nextPutAll: 'more content' ].
	self commit: 'second commit'! !
