
!GitRepositoryTests methodsFor: 'tests' stamp: 'MaxLeske 6/27/2010 21:45'!
testLooseObjectBytesAt
	| blob bytes |
	blob := repository storeObject: (GitBlob bytes: 'testBlob').
	bytes := repository looseObjectBytesAt: blob signature.

	self assert: bytes = (blob signature bytes)! !
