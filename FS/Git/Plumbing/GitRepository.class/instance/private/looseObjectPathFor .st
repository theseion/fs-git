
!GitRepository methodsFor: 'private' stamp: 'MaxLeske 6/27/2010 21:33'!
looseObjectPathFor: aGitObjectSignature
	| hexHash |
	hexHash := aGitObjectSignature hexHash.
	^ 'objects/' , (hexHash first: 2) , '/' , (hexHash allButFirst: 2)! !
