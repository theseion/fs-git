
!GitProtocol methodsFor: 'accessing' stamp: 'CamilloBruni 12/25/2011 13:55'!
refsPrefixed: aPrefix
	
	|result|
	
	result := Dictionary new.
	self refs keysAndValuesDo: [ :key :ref|
		(key beginsWith: aPrefix) ifTrue: [
			result at: (key copyAfterLast: $/) put: ref]].
	
	^ result! !
