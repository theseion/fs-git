
!MCGitVersion methodsFor: 'accessing' stamp: 'CamilloBruni 1/23/2012 23:12'!
snapshot
	^ snapshot ifNil: [ 
		snapshot := self loadSnapshot ].! !
