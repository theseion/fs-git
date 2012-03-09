
!GitRepository methodsFor: 'testing' stamp: 'MaxLeske 6/30/2010 08:15'!
exists
	^self baseDir exists and: [self isInitialized]! !
