
!GitTag methodsFor: 'accessing' stamp: 'CamilloBruni 7/21/2011 15:14'!
hash
	^ self name hash bitXor: self class name hash! !
