
!GitProtocol methodsFor: 'private' stamp: 'CamilloBruni 1/17/2012 01:23'!
consumeNAK

	self socketStream skip: 4! !
