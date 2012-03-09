
!GitFSCK methodsFor: 'visiting' stamp: 'CamilloBruni 6/22/2011 03:56'!
acceptCollection: aCollection 
	aCollection do: [ :each|
		self accept: each ].! !
