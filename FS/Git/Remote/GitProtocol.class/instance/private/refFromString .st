
!GitProtocol methodsFor: 'private' stamp: 'CamilloBruni 12/25/2011 14:16'!
refFromString: aString
	| lineLength |
	lineLength := (Integer readFrom: (aString first: 4) base: 16) - 1.
	self assert: aString size = lineLength.
	^ aString last: lineLength - 4! !
