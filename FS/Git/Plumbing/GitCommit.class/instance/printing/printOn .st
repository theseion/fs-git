
!GitCommit methodsFor: 'printing' stamp: 'CamilloBruni 6/22/2011 04:33'!
printOn: aStream
	super printOn: aStream.
	self message
		ifNotNilDo: [ :msg|
			aStream
				nextPutAll: '(''';
				nextPutAll: msg;
				nextPutAll: ''')' ]! !
