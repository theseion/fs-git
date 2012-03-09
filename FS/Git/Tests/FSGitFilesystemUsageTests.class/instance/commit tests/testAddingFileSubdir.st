
!FSGitFilesystemUsageTests methodsFor: 'commit tests' stamp: 'CamilloBruni 8/9/2011 17:04'!
testAddingFileSubdir
	| ref filename |
	self assert: workingCopy root children isEmpty.
	
	filename := 'aFile'.
	ref := (workingCopy / 'foo' / 'bar') ensureDirectory / filename.
	self deny: ref exists.
	ref writeStreamDo: [ :stream | stream nextPutAll: 'new file' ].
	self assert: ref exists.
	self assert: (workingCopy / 'foo' / 'bar' / filename) exists.
	self commit: 'a commit'.
	
	self assert: ref exists.
	self assert: (workingCopy / 'foo' / 'bar' / filename) exists! !
