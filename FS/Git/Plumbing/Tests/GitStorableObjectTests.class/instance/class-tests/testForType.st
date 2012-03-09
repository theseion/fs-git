
!GitStorableObjectTests methodsFor: 'class-tests' stamp: 'MaxLeske 8/11/2011 23:02'!
testForType
	GitStorableObject allSubclasses do: [ :each | each typeCode isNil 
		ifFalse: [ self assert: (GitStorableObject forType: each typeCode) = each ]
		ifTrue: [ self should: [ GitStorableObject forType: each typeCode ] raise: GitInvalidObjectError ] ]! !
