
!GitRepository methodsFor: 'private' stamp: 'CamilloBruni 7/6/2011 16:22'!
looseObjectStreamAt: aGitObjectSignature ifAbsent: aBlock
	^ (self baseDir resolve: (self looseObjectPathFor: aGitObjectSignature)) 
		readStreamDo: [ :stream | ReadStream on: (ZLibReadStream on: stream contents) contents ]
		ifAbsent: aBlock! !
