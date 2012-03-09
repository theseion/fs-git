
!GitCommit methodsFor: 'accessing' stamp: 'MaxLeske 7/29/2010 10:32'!
parents
	^ parents ifNil: [ 
		self isLoaded 
			ifTrue: [ parents := OrderedCollection new ]
			ifFalse: [ self loadLazily. parents ] ]! !
