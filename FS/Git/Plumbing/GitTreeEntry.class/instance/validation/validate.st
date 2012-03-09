
!GitTreeEntry methodsFor: 'validation' stamp: 'MaxLeske 8/11/2011 22:30'!
validate
	mode ifNil: [ self invalid: 'Filemode is required for tree entries.' ].
	objectSignature ifNil: [ self invalid: 'A valid signature is required for the tree entry to point to.' ].
	entryName ifNil: [ self invalid: 'A tree entry requires a name.' ].
	entryName ifEmpty: [ self invalid: 'Cannot use empty name for a tree entry.' ].! !
