
!FSGitFilesystemUsageTests methodsFor: 'commit tests' stamp: 'CamilloBruni 7/15/2011 16:25'!
testTags
	self assert: workingCopy tagNames isEmpty.
	
	(workingCopy / 'afile') writeStreamDo: [ :stream | ].
	self commit: 'commit 1' andTag: 'tag 1'.
	self assert: workingCopy tagNames size = 1.
	self assert: (workingCopy tagNames includes: 'tag 1').
	
	(workingCopy / 'anotherfile') writeStreamDo: [ :stream | ].
	self commit: 'commit 2' andTag: 'tag number two'.
	self assert: workingCopy tagNames size = 2.
	self assert: (workingCopy tagNames includes: 'tag number two').
	
	basicRepository 
		updateRef: basicRepository tagsDir / 'tag3' 
		to: (GitObjectSignature from: workingCopy name).
	self assert: workingCopy tagNames size = 3.
	self assert: (workingCopy tagNames includesAllOf: #('tag 1' 'tag number two' 'tag3'))! !
