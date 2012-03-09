
!GitObjectSignature methodsFor: 'printing' stamp: 'MaxLeske 5/8/2010 20:42'!
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(; nextPutAll: self hexHash; nextPut: $).! !
