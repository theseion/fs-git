
!GitRepository methodsFor: 'comparing' stamp: 'CamilloBruni 7/15/2011 18:14'!
hash
	^ reference basename hash bitXor: self class name hash! !
