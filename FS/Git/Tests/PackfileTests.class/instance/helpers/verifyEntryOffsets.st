
!PackfileTests methodsFor: 'helpers' stamp: 'MaxLeske 7/31/2011 16:52'!
verifyEntryOffsets
	[ self tryNewDeltaFormatForOffsets ]
		on: TestFailure
		do: [ self tryOldDeltaFormatForOffsets ]! !
