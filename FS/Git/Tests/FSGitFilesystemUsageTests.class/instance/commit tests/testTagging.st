
!FSGitFilesystemUsageTests methodsFor: 'commit tests' stamp: 'CamilloBruni 7/15/2011 16:25'!
testTagging
	| ref |
	(workingCopy / 'afile') writeStreamDo: [ :stream | ].
	self commit: 'a commit' andTag: 'my first tag'.
	ref := basicRepository tagsDir / 'my first tag'.
	self assert: ref exists.
	self assert: ref basename = 'my first tag'.
	self assert: (basicRepository objectNamed: ref readStream contents asString) message = 'a commit'! !
