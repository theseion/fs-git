
!FSGitStore methodsFor: 'git-delegating' stamp: 'CamilloBruni 7/15/2011 15:33'!
timeStampOfCreation
	revision
		ifNotNil: [ ^ revision author timeStamp ]
		ifNil: [ ^ nil ]! !
