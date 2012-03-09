
!GitObjectLoader methodsFor: 'accessing' stamp: 'CamilloBruni 7/6/2011 16:03'!
objectNamed: aHexHash from: aGitRepository ifAbsent: aBlock
	repository := aGitRepository.
	^self objectNamed: aHexHash ifAbsent: aBlock! !
