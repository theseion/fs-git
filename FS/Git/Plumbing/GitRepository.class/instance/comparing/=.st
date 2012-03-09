
!GitRepository methodsFor: 'comparing' stamp: 'CamilloBruni 7/20/2011 13:07'!
= other
	(other isKindOf: self class)
		ifFalse: [ ^ false ].
	^ self baseDir = (other baseDir)! !
