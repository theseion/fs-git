
!FSGitFilesystemUsageTests methodsFor: 'commit tests' stamp: 'CamilloBruni 8/9/2011 20:09'!
testAddingEmptySubdir
	| ref filename |
	self assert: workingCopy root children isEmpty.
	
	filename := 'aFile'.
	ref := (workingCopy / 'foo' / 'bar') ensureDirectory / filename.
	ref writeStreamDo: [ :stream | stream nextPutAll: 'new file' ].
	self assert: ref exists.
	
	ref := (workingCopy / 'foo' / 'bar2' / 'emptyDir') ensureDirectory.
	self assert: ref exists.
	
	self commit: 'adding empty subdirs'.! !
