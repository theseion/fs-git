
!GitFSCK methodsFor: 'validation' stamp: 'CamilloBruni 6/22/2011 04:19'!
collectUnreachableErrors	
	unreachable do: [ :each|
		self collectError: 'unreachable object' for: each].! !
