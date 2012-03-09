
!GitUnpackTest methodsFor: 'as yet unclassified' stamp: 'mml 1/15/2012 22:12'!
readObjectEntries
	| objectType entryLength |
	self halt.
	objectType := self readEntryType.
	entryLength := self readEntryLength.! !
