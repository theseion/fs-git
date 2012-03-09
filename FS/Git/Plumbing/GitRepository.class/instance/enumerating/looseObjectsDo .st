
!GitRepository methodsFor: 'enumerating' stamp: 'CamilloBruni 6/21/2011 05:38'!
looseObjectsDo: aBlock
	self looseObjectNamesDo: [ :signature|
		aBlock value: (self objectWithSignature: signature)]! !
