
!GitObjectSignatureTests methodsFor: 'tests' stamp: 'MaxLeske 7/22/2010 20:30'!
testHashingConditions
	| objectSignature objectContent objectTypeCode templateStream objectNames |
	objectNames := #('blob' 'commit' 'tree' 'tag').
	
	objectNames do:  [ :objectName |
		templateStream := WriteStream on: (ByteArray new).
		objectTypeCode := self perform: (objectName , 'TypeCode') asSymbol.
		objectContent := self perform: (objectName , 'Contents') asSymbol.
		objectSignature := self perform: (objectName , 'Signature') asSymbol.
		
		templateStream 
			nextPutAll: objectTypeCode asByteArray;
			nextPut: Character space asInteger;
			nextPutAll: objectContent size asString asByteArray;
			nextPut: 0;
			nextPutAll: objectContent.
		
		self assert: templateStream contents = objectSignature bytes ]! !
