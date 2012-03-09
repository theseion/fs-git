
!PackfileTests methodsFor: 'helpers' stamp: 'MaxLeske 8/2/2011 19:57'!
verifyOldFormatDeltification
	| baseObjectName position result |
	position := packReader position.
	self skipEntryHeader.
	baseObjectName := (packReader next: 20) hex.
	result := self verifyDeltificationWithBaseAt: (self packOffsetOf: baseObjectName).
	packReader position: position.
	^ result! !
