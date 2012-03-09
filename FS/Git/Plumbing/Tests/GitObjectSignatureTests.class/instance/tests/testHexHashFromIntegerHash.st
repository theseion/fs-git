
!GitObjectSignatureTests methodsFor: 'tests' stamp: 'MaxLeske 5/25/2011 17:11'!
testHexHashFromIntegerHash
	| hash |
	hash := SecureHashAlgorithm new hashMessage: 11.
	self assert: hash printStringHex size = 39.
	hash := GitObjectSignature new hexHashFrom: hash.
	self assert: hash size = 40.
	self assert: hash asLowercase = hash.! !
