
!GitObjectSignatureTests methodsFor: 'helpers' stamp: 'MaxLeske 7/22/2010 19:55'!
createTree
	^ GitTree entries: { self createTreeEntry }! !
