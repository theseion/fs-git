
!FSGitLazyLoadingTests methodsFor: 'tests' stamp: 'CamilloBruni 7/15/2011 15:59'!
testBasicCommit		
	self assert: (workingCopy / 'newFile') exists not.
	(workingCopy / 'newFile') writeStreamDo: [ :stream | stream nextPutAll: 'testcontent' ].
	self commit: 'test commit'.
	
	self assert: (repository head / 'newFile') exists! !
