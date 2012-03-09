
!GitObject methodsFor: 'accessing' stamp: 'MaxLeske 6/24/2010 14:47'!
size
	| stream |
	stream := GitStream new.
	self saveTo: stream.
	^stream size! !
