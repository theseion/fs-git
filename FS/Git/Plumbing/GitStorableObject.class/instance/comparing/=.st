
!GitStorableObject methodsFor: 'comparing' stamp: 'CamilloBruni 8/3/2011 13:17'!
= other
	(other isKindOf: self class)
		ifFalse: [ ^ false ].
		
	^self signature = other signature! !
