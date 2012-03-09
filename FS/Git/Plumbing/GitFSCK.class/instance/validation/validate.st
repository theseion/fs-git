
!GitFSCK methodsFor: 'validation' stamp: 'MaxLeske 8/11/2011 21:57'!
validate
	self collectObjects.
	referenceContext := thisContext.
	errors := Dictionary new.
	unreachable := all copy.
	reachable := Set new.
	self validateHead.
	self validateBranches.
	self validateTags.
	
	self validateUnreachableObjects.
	
	errors isEmpty ifFalse: [ 
		self invalidRepository: 'GitFSCK found errors in the validated repository.' ].! !
