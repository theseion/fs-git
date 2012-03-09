
!GitStamp class methodsFor: 'accessing' stamp: 'MaxLeske 8/12/2011 09:59'!
defaultEmail
	DefaultEmail isEmptyOrNil 
		ifTrue: [ ^ GitStampEmailRequest signal ]
		ifFalse: [ ^ DefaultEmail ].
	^ self defaultEmail! !
