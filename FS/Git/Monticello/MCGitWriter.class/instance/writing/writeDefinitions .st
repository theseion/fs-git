
!MCGitWriter methodsFor: 'writing' stamp: 'CamilloBruni 1/24/2012 12:19'!
writeDefinitions: definitions	
	definitions do: [ :each|
		self writeDefinition: each ].! !
