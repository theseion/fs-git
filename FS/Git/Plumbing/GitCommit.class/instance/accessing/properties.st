
!GitCommit methodsFor: 'accessing' stamp: 'CamilloBruni 6/22/2011 04:35'!
properties
	^ properties ifNil: [ 
		self loadLazily. 
		properties ]! !
