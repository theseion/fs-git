
!GitStampTests methodsFor: 'tests' stamp: 'MaxLeske 7/22/2010 18:48'!
testStampReading
	| str stamp |
	str := 'Tony Garnock-Jones <tonygarnockjones@gmail.com> 1266614121 +1300'.
	stamp := GitStamp fromString: str.
	self assert: str = stamp printString.! !
