
!FSGitFilesystemUsageTests methodsFor: 'tests' stamp: 'CamilloBruni 7/15/2011 15:57'!
testModifyExistingFile
	| ref originalContent |
	self createSomeCommits.
	self assert: workingCopy root children size = 2.
	self assert: workingCopy root allChildren size = 4.
	
	ref := workingCopy / 'dir1' / 'file2'.
	originalContent := ref readStream contents asString.
	ref writeStreamDo: [ :stream | 
		stream 
			nextPutAll: originalContent;
			nextPutAll: '/moremoremore' ].
	self assert: workingCopy root children size = 2.
	self assert: workingCopy root allChildren size = 4.
	ref := workingCopy / 'dir1' / 'file2'.
	self assert: ref exists.
	self assert: ref readStream contents asString = 'more content/moremoremore'! !
