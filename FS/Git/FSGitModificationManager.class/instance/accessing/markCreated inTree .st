
!FSGitModificationManager methodsFor: 'accessing' stamp: 'CamilloBruni 8/1/2011 16:31'!
markCreated: aPath inTree: aTree
	| newTree |
	aPath = FSPath root ifTrue: [ ^ self ].

	treeMap
		at: aPath parent
		ifAbsentPut: [ self newTreeFrom: aTree ].
	
	(createdPaths
		at: aPath parent
		ifAbsentPut: [ FSGitSetWrapper new]) 
			add: aPath.! !
