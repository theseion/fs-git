
!GitTreeEntry methodsFor: 'comparing' stamp: 'MaxLeske 10/12/2010 22:16'!
hash
	^ self species hash bitXor: (self mode bitXor: entryName hash)! !
