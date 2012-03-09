
!GitStamp class methodsFor: 'instance creation' stamp: 'MaxLeske 8/11/2011 22:22'!
readFrom: aStream
	| author email secondsSince1970 sign zoneOffset |
	author := (aStream upTo: $<) withBlanksTrimmed.
	email := (aStream upTo: $>) withBlanksTrimmed.
	aStream skipSeparators.
	secondsSince1970 := Integer readFrom: aStream.
	aStream skipSeparators.
	sign := aStream next.
	('-+' includes: sign) ifFalse: [ 
		self invalid: 'Invalid timezone sign found while loading a GitStamp object.' ].
	
	zoneOffset := Integer readFrom: aStream.
	zoneOffset := (zoneOffset // 100) hours + (zoneOffset \\ 100) minutes.
	sign = $- ifTrue: [zoneOffset := zoneOffset negated].
	
	^ self new
		name: author;
		email: email; 
		timeStamp: ((DateAndTime fromUnixTime: secondsSince1970) offset: zoneOffset) asTimeStamp;
		yourself! !
