
!GitStorableObjectTests methodsFor: 'class-tests' stamp: 'MaxLeske 6/26/2010 22:11'!
testWithSignature
	| instance signature |
	signature := GitObjectSignature from: 234.
	instance := GitStorableObject withSignature: signature.
	self assert: instance signature = signature.
	self assert: instance signature == signature! !
