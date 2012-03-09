
!MCGitReader methodsFor: 'accessing' stamp: 'CamilloBruni 7/13/2011 15:41'!
definitions
	^ definitions ifNil: [ definitions := self loadDefinitions].! !
