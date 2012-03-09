
!GitObjectSignature methodsFor: 'saving' stamp: 'MaxLeske 7/31/2010 17:51'!
saveTo: aStream
	aStream nextPutBytes: (self integerHash asByteArray forceTo: 20 paddingStartWith: 0)! !
