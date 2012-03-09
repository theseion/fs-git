
!GitCommit methodsFor: 'accessing' stamp: 'CamilloBruni 6/22/2011 04:34'!
author
	^ author ifNil: [ 
		self loadLazily. 
		author ]! !
