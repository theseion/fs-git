
!GitTag methodsFor: 'printing' stamp: 'MaxLeske 8/12/2011 08:43'!
printOn: aStream
	super printOn: aStream.
	aStream
		<< '("';
		<< self name;
		<< '")'! !
