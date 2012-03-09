
!GitObjectSignatureTests methodsFor: 'tests' stamp: 'MaxLeske 5/9/2010 11:42'!
testByteSignatureForBlob
	| stream bytes |
	stream := ReadStream on: (GitObjectSignature new byteSignatureFor: (GitBlob bytes: 'test')).
	
	bytes := stream upTo: Character space asInteger.
	self assert: bytes asString = 'blob'.
	
	bytes := stream upTo: 0.
	self assert: bytes asString asInteger = 4.
	
	bytes := stream upToEnd.
	self assert: bytes asString = 'test'! !
