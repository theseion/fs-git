
!FSGitFilesystemUsageTests methodsFor: 'tests' stamp: 'CamilloBruni 8/1/2011 17:13'!
testCompleteUsecase
	|git |
	git := workingCopy workingDirectory.

	workingCopy root children size.

	(git / 'f') writeStreamDo: [ :stream | stream nextPutAll: 'new file' ].
	self commit: 'adding files'.

	(git / 'f') delete.
	self commit: 'deleted files'.! !
