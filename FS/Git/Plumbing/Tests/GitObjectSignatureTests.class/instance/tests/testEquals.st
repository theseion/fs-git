
!GitObjectSignatureTests methodsFor: 'tests' stamp: 'MaxLeske 6/24/2010 12:33'!
testEquals
	| signature1 signature2 |
	signature1 := GitObjectSignature for: (GitBlob bytes: 'test1').
	signature2 := GitObjectSignature for: (GitBlob bytes: 'test2').
	self deny: signature1 = signature2! !
