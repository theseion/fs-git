
!GitStorableObject methodsFor: 'private' stamp: 'Max Leske 4/25/2010 13:05'!
byteData
	| stream |
	stream := GitStream new.
	self saveTo: stream.
	^stream contents! !
