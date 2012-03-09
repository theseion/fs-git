
!FSGitModificationManager methodsFor: 'private' stamp: 'CamilloBruni 8/9/2011 19:28'!
treeAt: aPath
	| tree |
	treeMap
		at: aPath
		ifPresent: [ :aTree| ^ aTree].
	tree := (self lookupTreeAt: aPath)	
				ifNil: [ self newTreeAt: aPath ].
	treeMap at: aPath put: tree.
	^ tree ! !
