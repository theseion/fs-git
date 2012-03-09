
!GitTree methodsFor: 'private' stamp: 'MaxLeske 10/18/2010 09:46'!
entryAt: aName ifPresent: presentBlock ifAbsent: absentBlock
	^ entries 
		at: aName
		ifPresent: presentBlock
		ifAbsent: absentBlock! !
