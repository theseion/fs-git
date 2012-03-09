
!GitRepository methodsFor: 'loading' stamp: 'CamilloBruni 7/6/2011 16:01'!
objectWithSignature: aGitObjectSignature ifAbsent: aBlock
	^ GitObjectLoader objectWithSignature: aGitObjectSignature from: self ifAbsent: aBlock! !
