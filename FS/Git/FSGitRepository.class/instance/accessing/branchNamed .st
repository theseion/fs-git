
!FSGitRepository methodsFor: 'accessing' stamp: 'CamilloBruni 7/13/2011 17:25'!
branchNamed: aString
	^ self filesystemOn: (repository branchNamed: aString)! !
