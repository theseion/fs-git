
!FSGitModificationManager methodsFor: 'accessing' stamp: 'CamilloBruni 7/15/2011 19:00'!
markCreated: aPath 
	^ self markCreated: aPath 
		inTree: (self treeAt: aPath parent)! !
