
!PackfileTests methodsFor: 'helpers' stamp: 'MaxLeske 7/30/2011 14:29'!
isEntryCommit
	^ self hasCommitSignature & self hasCommitData
	! !
