
!GitTaglikeObjectTests methodsFor: 'tests' stamp: 'MaxLeske 6/27/2010 20:44'!
testRetrievingProperties
	| object collection |
	self assert: GitTaglikeObject new properties isEmpty.
	
	collection := OrderedCollection new.
	collection add: Object new.
	object := GitTaglikeObject new.
	object properties: collection.
	
	self assert: object properties = collection.
	self assert: object properties isEmpty not! !
