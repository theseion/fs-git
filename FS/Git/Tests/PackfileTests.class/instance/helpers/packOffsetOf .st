
!PackfileTests methodsFor: 'helpers' stamp: 'Camillobruni 8/17/2011 19:58'!
packOffsetOf: sha1
	| dummyFS pack |
	"GitPack already contains the necessary code."
	dummyFS := FSFilesystem memory.
	(dummyFS root / 'pack.idx') writeStreamDo: [ :stream | 
		stream nextPutAll: self oldPackIndexBytes ].
	(dummyFS root / 'pack.pack') writeStreamDo: [ :stream |
		stream nextPutAll: self oldPackBytes ].
	 
	pack := GitPack new.
	pack basePath: dummyFS root / 'pack'.
	^ pack offsetAt: (pack tableIndexForSha: sha1 )! !
