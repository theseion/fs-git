
!GitRepository methodsFor: 'testing' stamp: 'MaxLeske 5/26/2010 22:25'!
isObjectDirectory: aReference
	^aReference isDirectory and: [aReference basename size = 2]! !
