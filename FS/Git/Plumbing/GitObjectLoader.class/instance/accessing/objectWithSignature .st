
!GitObjectLoader methodsFor: 'accessing' stamp: 'MaxLeske 8/11/2011 22:07'!
objectWithSignature: aGitObjectSignature
	^  self 
		objectWithSignature: aGitObjectSignature 
		ifAbsent: [ 
			GitObjectNotFoundError 
				signal: 'Object not found.'
				with: aGitObjectSignature asString]! !
