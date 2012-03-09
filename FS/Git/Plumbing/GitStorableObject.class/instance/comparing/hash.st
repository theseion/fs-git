
!GitStorableObject methodsFor: 'comparing' stamp: 'CamilloBruni 6/22/2011 03:50'!
hash
	^ self signature hash bitXor: self class name hash! !
