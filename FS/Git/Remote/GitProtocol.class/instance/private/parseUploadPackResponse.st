
!GitProtocol methodsFor: 'private' stamp: 'CamilloBruni 12/25/2011 15:10'!
parseUploadPackResponse
	| null result properties|
	null := 0 asCharacter.
	result := Dictionary new.
	
	self readLines: [:line| |split signature parts|
		split := null split: (line allButLast: 1) asString.
		
		properties ifNil: [
			"the first line is special containing the properties" 
			properties := $  split: split second.
			result at: #properties put: properties].
			
		parts := $  split: split first.
		signature := GitObjectSignature from: parts first.
		result at: parts second put: signature ].
	
	^ result! !
