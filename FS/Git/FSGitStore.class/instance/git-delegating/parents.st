
!FSGitStore methodsFor: 'git-delegating' stamp: 'CamilloBruni 7/15/2011 17:17'!
parents
	revision ifNil: [ ^ OrderedCollection new ].
	^ revision parents ! !
