
!GitRepository methodsFor: 'accessing' stamp: 'MaxLeske 6/27/2010 21:35'!
looseObjectBytesAt: aGitObjectSignature
	^ (self looseObjectStreamAt: aGitObjectSignature) contents! !
