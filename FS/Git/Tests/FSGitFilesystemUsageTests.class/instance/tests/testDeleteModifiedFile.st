
!FSGitFilesystemUsageTests methodsFor: 'tests' stamp: 'CamilloBruni 7/15/2011 17:06'!
testDeleteModifiedFile
	| ref path |
	path := 'dir1/file2'.
	self createSomeCommits.
	
	ref := workingCopy referenceTo: path.
	ref parent ensureDirectory.
	
	ref writeStreamDo: [ :stream | 
		stream nextPutAll: 'changed it' ].
	
	self assert: ref readStream contents asString = 'changed it'.
	
	ref delete.
	self deny: ref exists.
	self deny: (workingCopy referenceTo: path) exists! !
