
!FSGitModificationManager methodsFor: 'accessing' stamp: 'CamilloBruni 7/5/2011 16:23'!
markDeleted: aPath 
	^ self markDeleted: aPath 
		inTree: (self treeAt: aPath parent)! !
