
!FSGitStore methodsFor: 'delegate' stamp: 'CamilloBruni 7/15/2011 18:54'!
nodeAt: aPath ifPresent: presentBlock ifAbsent: absentBlock
	self ensure: aPath.
	^ cacheStore
		nodeAt:  aPath
		ifPresent: presentBlock
		ifAbsent: absentBlock! !
