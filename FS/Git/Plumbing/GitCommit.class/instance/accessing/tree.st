
!GitCommit methodsFor: 'accessing' stamp: 'CamilloBruni 6/22/2011 04:35'!
tree
	^ tree ifNil: [ 
		self loadLazily. 
		tree ]! !
