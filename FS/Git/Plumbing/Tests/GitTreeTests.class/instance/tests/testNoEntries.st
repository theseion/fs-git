
!GitTreeTests methodsFor: 'tests' stamp: 'MaxLeske 6/26/2010 22:30'!
testNoEntries
	self assert: (GitTree new entries) species = Dictionary.
	self assert: (GitTree new entries) isEmpty! !
