
!GitObjectSignature methodsFor: 'private' stamp: 'MaxLeske 7/30/2011 16:29'!
integerHashFrom: byteArray
	^ SecureHashAlgorithm new hashMessage: byteArray! !
