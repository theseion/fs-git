
!FSGitModificationManager methodsFor: 'accessing' stamp: 'MaxLeske 11/12/2010 21:56'!
nameOf: aPath
	| tree |
	tree := treeMap at: aPath parent.
	^ (tree entryAt: aPath basename) objectSignature hexHash! !
