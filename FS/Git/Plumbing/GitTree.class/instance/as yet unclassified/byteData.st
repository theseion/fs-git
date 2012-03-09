
!GitTree methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 6/22/2011 05:48'!
byteData
	self entries == 0
		ifTrue: [ self halt].
	^ super byteData! !
