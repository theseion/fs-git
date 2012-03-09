
!GitFSCK methodsFor: 'validation' stamp: 'CamilloBruni 6/22/2011 04:28'!
validateUnreachableObjects
	| unreachableCopy reachableCopy |
	unreachable ifEmpty: [ ^ self ].
	
	self collectUnreachableErrors.
	unreachableCopy := unreachable copy.
	reachableCopy := reachable copy.
	self acceptCollection: unreachable.
	reachable := reachableCopy.
	unreachable := unreachableCopy.! !
