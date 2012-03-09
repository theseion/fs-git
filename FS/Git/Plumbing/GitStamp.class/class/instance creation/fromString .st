
!GitStamp class methodsFor: 'instance creation' stamp: 'tonyg 2/23/2010 21:29'!
fromString: aString
	^ self readFrom: (ReadStream on: aString)! !
