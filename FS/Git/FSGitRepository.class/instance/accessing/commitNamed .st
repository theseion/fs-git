
!FSGitRepository methodsFor: 'accessing' stamp: 'MaxLeske 8/12/2011 09:29'!
commitNamed: hexHash
	^ self filesystemOn: (repository objectNamed: hexHash)! !
