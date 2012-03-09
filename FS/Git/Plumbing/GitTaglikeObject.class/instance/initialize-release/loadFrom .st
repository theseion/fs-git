
!GitTaglikeObject methodsFor: 'initialize-release' stamp: 'MaxLeske 6/26/2010 21:53'!
loadFrom: aStream
	| key value |
	[aStream peek = Character lf asInteger] whileFalse: [
		key := (aStream upTo: Character space asInteger) asString.
		value := (aStream upTo: Character lf asInteger) asString.
		self loadKey: key value: value].
	aStream next.
	message := aStream upToEnd asString.
	^self
! !
