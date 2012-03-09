
!GitTreeEntry methodsFor: 'printing' stamp: 'CamilloBruni 7/11/2011 17:27'!
printOn: aStream
	super printOn: aStream.
	self entryName ifNil: [ ^ self ].
	aStream
		<< '(''';
		nextPutAll: self entryName;
		<< ''')'.! !
