
!FSGitModificationManager methodsFor: 'accessing' stamp: 'MaxLeske 3/6/2011 13:33'!
mapAll: aKeyedCollection
	aKeyedCollection associations do: [ :assoc | 
		treeMap 
			at: assoc key
			ifAbsentPut: [ assoc value ] ]! !
