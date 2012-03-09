
!FSGitModificationManager methodsFor: 'accessing' stamp: 'CamilloBruni 7/15/2011 21:10'!
updateCacheAt: aPath with: aGitTree.
	treeMap 
		at: aPath
		ifAbsentPut: [ aGitTree]! !
