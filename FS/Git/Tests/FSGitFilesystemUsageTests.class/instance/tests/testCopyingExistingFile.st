
!FSGitFilesystemUsageTests methodsFor: 'tests' stamp: 'CamilloBruni 7/15/2011 15:55'!
testCopyingExistingFile
	| ref originalContent copyContent |
	self createSomeCommits.
	ref := workingCopy / 'copy'.
	self deny: ref exists.
	
	(workingCopy / 'file1') copyTo: ref.
	self assert: ref exists.
	self assert: (workingCopy / 'copy') exists.
	originalContent := (workingCopy / 'file1') readStream contents.
	copyContent := ref readStream contents.
	self assert: originalContent = copyContent.
	self assert: copyContent asString = 'content'! !
