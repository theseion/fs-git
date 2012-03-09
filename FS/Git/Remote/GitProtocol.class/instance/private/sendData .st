
!GitProtocol methodsFor: 'private' stamp: 'mml 1/15/2012 18:26'!
sendData: aString
	Transcript show: aString; cr; cr.
	^ self socketStream sendCommand: aString! !
