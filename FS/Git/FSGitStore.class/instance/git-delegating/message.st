
!FSGitStore methodsFor: 'git-delegating' stamp: 'CamilloBruni 7/15/2011 15:11'!
message
	^ revision isNil
		ifTrue: [ '' ]
		ifFalse: [ revision message ]! !
