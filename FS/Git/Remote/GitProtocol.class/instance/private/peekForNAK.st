
!GitProtocol methodsFor: 'private' stamp: 'mml 1/15/2012 18:28'!
peekForNAK
	^  (self socketStream peek: 4) asByteArray = #[78 65 75 10]  "NAK\n"! !
