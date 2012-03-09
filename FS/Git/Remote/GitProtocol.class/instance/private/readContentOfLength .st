
!GitProtocol methodsFor: 'private' stamp: 'mml 1/15/2012 18:27'!
readContentOfLength: anInteger
	^ self socketStream next: anInteger - 4 "remove length header byte"! !
