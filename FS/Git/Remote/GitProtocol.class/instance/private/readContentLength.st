
!GitProtocol methodsFor: 'private' stamp: 'mml 1/15/2012 18:28'!
readContentLength
	^ (Integer readFrom: (self socketStream next: 4) asString base: 16)! !
