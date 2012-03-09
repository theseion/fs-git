
!GitRepository methodsFor: 'private' stamp: 'MaxLeske 8/3/2011 12:06'!
looseObjectStreamAt: aGitObjectSignature
	^ self 
		looseObjectStreamAt: aGitObjectSignature 
		ifAbsent: [ FSFileDoesNotExist signalWith: 
			(self baseDir resolve: (self looseObjectPathFor: aGitObjectSignature)) ]! !
