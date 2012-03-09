
!GitTreeEntry methodsFor: 'initialize-release' stamp: 'CamilloBruni 7/11/2011 17:28'!
loadFrom: aStream
	mode := Integer readFrom: (aStream upTo: Character space asInteger) asString base: 8.
	entryName := (aStream upTo: 0) asString.
	objectSignature := GitObjectSignature loadFrom: aStream.
	^self! !
