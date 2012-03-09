
!PackfileTests methodsFor: 'helpers' stamp: 'MaxLeske 7/31/2011 16:51'!
verifyEntrySizes
	[ self tryNewDeltaFormatForSizes ]
		on: TestFailure
		do: [ self tryOldDeltaFormatForSizes ]! !
