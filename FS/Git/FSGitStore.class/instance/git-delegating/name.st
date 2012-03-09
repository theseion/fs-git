
!FSGitStore methodsFor: 'git-delegating' stamp: 'CamilloBruni 8/1/2011 16:18'!
name
"Answers the sha1 name of the currently active commit (the checked out version of the repository)."

	^ revision
		ifNotNil: [ revision signature hexHash ]
		ifNil: [ '' ]! !
