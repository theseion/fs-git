
!MCGitVersionInfo methodsFor: 'accessing' stamp: 'CamilloBruni 1/23/2012 23:00'!
ancestors
	^ ancestors ifNil: [ 
		ancestors := self loadAncestors ]! !
