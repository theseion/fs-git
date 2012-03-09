
!PackfileTests methodsFor: 'running' stamp: 'MaxLeske 8/1/2011 17:33'!
useNewPack
	packFile writeStreamDo: [ :stream |
		stream nextPutAll: self newPackBytes ].
	indexFile writeStreamDo: [ :stream |
		stream nextPutAll: self newPackIndexBytes ] ! !
