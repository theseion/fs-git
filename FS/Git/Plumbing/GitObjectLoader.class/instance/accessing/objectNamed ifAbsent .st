
!GitObjectLoader methodsFor: 'accessing' stamp: 'CamilloBruni 7/6/2011 16:05'!
objectNamed: aHexHash ifAbsent: aBlock
	^self objectWithSignature: (GitObjectSignature from: aHexHash) ifAbsent: aBlock! !
