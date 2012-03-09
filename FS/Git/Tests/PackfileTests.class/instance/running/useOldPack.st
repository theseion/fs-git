
!PackfileTests methodsFor: 'running' stamp: 'MaxLeske 8/1/2011 19:01'!
useOldPack
	packFile writeStreamDo: [ :stream |
		stream nextPutAll: self oldPackBytes ].
	indexFile writeStreamDo: [ :stream |
		stream nextPutAll: self oldPackIndexBytes ] ! !
