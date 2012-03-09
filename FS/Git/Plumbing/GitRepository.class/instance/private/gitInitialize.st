
!GitRepository methodsFor: 'private' stamp: 'CamilloBruni 7/13/2011 18:37'!
gitInitialize
	self exists
		ifTrue: [ ^ self ].
	self baseDir ensureDirectory.
	self gitDirectories do: [ :dir | (self baseDir resolve: dir) createDirectory ].
	self baseDir / 'HEAD'
		writeStreamDo: [ :stream | 
			stream
				nextPutAll: 'ref: refs/heads/master';
				nextPut: Character lf ]! !
