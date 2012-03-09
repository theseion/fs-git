
!GitTree methodsFor: 'accessing' stamp: 'MaxLeske 6/26/2010 22:42'!
entries: aCollection
	aCollection do: [:each | self putEntry: each].! !
