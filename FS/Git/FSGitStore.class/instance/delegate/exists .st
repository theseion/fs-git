
!FSGitStore methodsFor: 'delegate' stamp: 'CamilloBruni 7/15/2011 19:06'!
exists: aPath
	(modManager isDeleted: aPath)
		ifTrue: [ ^ false ].
	self ensure: aPath.
	^ cacheStore exists: aPath! !
