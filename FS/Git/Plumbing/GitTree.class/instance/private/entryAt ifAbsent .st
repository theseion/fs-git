
!GitTree methodsFor: 'private' stamp: 'MaxLeske 10/11/2010 23:14'!
entryAt: aName ifAbsent: aBlock
	^ entries 
		at: aName
		ifAbsent: aBlock! !
