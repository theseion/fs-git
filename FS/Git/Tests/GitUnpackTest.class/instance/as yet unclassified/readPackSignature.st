
!GitUnpackTest methodsFor: 'as yet unclassified' stamp: 'mml 1/15/2012 22:12'!
readPackSignature
	self assert: (reader next: 4) asString = 'PACK'! !
