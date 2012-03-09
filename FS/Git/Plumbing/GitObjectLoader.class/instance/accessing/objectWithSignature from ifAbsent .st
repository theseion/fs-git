
!GitObjectLoader methodsFor: 'accessing' stamp: 'CamilloBruni 7/6/2011 16:04'!
objectWithSignature: aGitObjectSignature from: aGitRepository ifAbsent: aBlock
	repository := aGitRepository.
	^self objectWithSignature: aGitObjectSignature ifAbsent: aBlock! !
