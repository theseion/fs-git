
!GitProtocol methodsFor: 'private' stamp: 'CamilloBruni 1/17/2012 01:23'!
readSideband

	^ self socketStream next asInteger ! !
