
!GitStampTests methodsFor: 'tests' stamp: 'CamilloBruni 6/22/2011 05:35'!
testPrintOn
	| stamp template now |
	now := TimeStamp now.
	stamp := self defaultStamp.
	stamp timeStamp: now.
	
	template := 
		GitStamp defaultName, ' <',GitStamp defaultEmail,'> ', 
		now asUnixTime asString, 
		' ',
		(now offset positive ifTrue: ['+'] ifFalse: ['-']),
		(now offset hours printString forceTo: 2 paddingStartWith: $0),
		(now offset minutes printString forceTo: 2 paddingStartWith: $0).
	
	self assert: stamp printString = template! !
