
!GitRepository methodsFor: 'public' stamp: 'CamilloBruni 7/6/2011 16:12'!
tagNamed: aString ifAbsent: aBlock
	(self resolveRef: 'refs/tags/', aString) ifNotNilDo: [ :tagRef|
		 ^ self objectWithSignature: tagRef ifAbsent: aBlock ].
	^ aBlock value! !
