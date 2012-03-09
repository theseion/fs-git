
!FSGitStore methodsFor: 'internal' stamp: 'CamilloBruni 7/19/2011 17:54'!
ensure: aPath 
	aPath isRoot ifTrue: [ ^ aPath ].
	"Make sure we have the lates version of the cache"
	(modManager isDeleted: aPath) ifTrue: [ ^ aPath ].
	(cacheStore exists: aPath) ifTrue: [ ^ aPath ].
	
	self loadFromRepository: aPath.
	^ aPath.! !
