
!GitFSCK methodsFor: 'validation' stamp: 'MaxLeske 8/11/2011 22:55'!
collectError: error for: anObject
	errors at: anObject ifAbsentPut: OrderedCollection new.
	(errors at: anObject) add: (
		(error respondsTo: #copyUpTo:)
			ifTrue: [ error copyUpTo: referenceContext ]	
			ifFalse: [ error ])! !
