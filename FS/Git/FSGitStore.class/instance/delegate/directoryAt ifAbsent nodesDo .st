
!FSGitStore methodsFor: 'delegate' stamp: 'CamilloBruni 7/19/2011 18:00'!
directoryAt: aPath ifAbsent: absentBlock nodesDo: aBlock
	self ensure: aPath.
	"load the directory into the cache"
	(modManager treeAt: aPath) entries do: [ :gitEntry|
			self ensure: aPath / gitEntry entryName.
		].
	cacheStore directoryAt: aPath ifAbsent: absentBlock nodesDo: aBlock.! !
