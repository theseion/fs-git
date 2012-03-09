
!FSGitStore methodsFor: 'delegate' stamp: 'CamilloBruni 8/1/2011 16:30'!
basicOpen: aPath writable: isWritable
	isWritable ifTrue: [ modManager markFileCreated: aPath ].
	self ensure: aPath.
	^ cacheStore
		basicOpen: aPath
		writable: isWritable! !
