
!FSGitStore methodsFor: 'git-delegating' stamp: 'CamilloBruni 7/15/2011 15:33'!
timeStampOfCommit
	revision
		ifNotNil: [ ^ revision committer timeStamp ]
		ifNil: [ ^ nil ]! !
