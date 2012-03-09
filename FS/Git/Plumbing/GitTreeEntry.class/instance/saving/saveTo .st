
!GitTreeEntry methodsFor: 'saving' stamp: 'MaxLeske 7/10/2010 10:16'!
saveTo: aStream.
	aStream 
		nextPutAll: self printMode;
		space;
		nextPutAll: entryName;
		nullByte.
	objectSignature saveTo: aStream.! !
