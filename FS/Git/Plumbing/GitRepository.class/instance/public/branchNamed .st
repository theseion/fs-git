
!GitRepository methodsFor: 'public' stamp: 'MaxLeske 10/29/2010 22:23'!
branchNamed: aString
	^ self objectWithSignature: (self resolveRef: 'refs/heads/', aString)! !
