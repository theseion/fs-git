
!GitCommit methodsFor: 'accessing' stamp: 'CamilloBruni 6/22/2011 04:34'!
message
	^ message ifNil: [ 
		self loadLazily. 
		message ]! !
