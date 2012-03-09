
!GitRepositoryTests methodsFor: 'tests' stamp: 'MaxLeske 6/30/2010 15:27'!
testResolveRef
	| blob resolved |
	blob := repository storeObject: (GitBlob bytes: 'test').
	repository updateRef: 'HEAD' to: blob signature.
	
	resolved := repository resolveRef: 'HEAD'.
	self assert: blob signature = resolved! !
