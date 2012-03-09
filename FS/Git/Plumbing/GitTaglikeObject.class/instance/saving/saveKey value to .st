
!GitTaglikeObject methodsFor: 'saving' stamp: 'MaxLeske 4/23/2010 13:50'!
saveKey: key value: value to: aStream
	aStream 
		nextPutAll: key; space; 
		nextPutAll: value; lf.! !
