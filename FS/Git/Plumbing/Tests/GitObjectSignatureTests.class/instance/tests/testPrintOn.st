
!GitObjectSignatureTests methodsFor: 'tests' stamp: 'MaxLeske 6/27/2010 19:48'!
testPrintOn
	| signature template |
	signature := GitObjectSignature from: 'bf8b4530d8d246dd74ac53a13471bba17941dff7'.
	template := 'a GitObjectSignature(bf8b4530d8d246dd74ac53a13471bba17941dff7)'.
	
	self assert: signature printString = template! !
