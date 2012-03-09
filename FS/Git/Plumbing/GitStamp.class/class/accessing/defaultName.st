
!GitStamp class methodsFor: 'accessing' stamp: 'MaxLeske 8/12/2011 10:00'!
defaultName
	DefaultName isEmptyOrNil 
		ifTrue: [ ^ GitStampNameRequest signal ]
		ifFalse: [ ^ DefaultName ].
	^ self defaultName! !
