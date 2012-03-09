
!GitTreeEntry methodsFor: 'comparing' stamp: 'MaxLeske 8/5/2010 17:15'!
= other
	^ other species = self species and: [
		other objectSignature = self objectSignature ]! !
