
!GitPackedObject methodsFor: 'accessing' stamp: 'MaxLeske 8/12/2011 09:25'!
object
	^ (decodeClass in: repository) loadFrom: unpackedBytes readStream! !
