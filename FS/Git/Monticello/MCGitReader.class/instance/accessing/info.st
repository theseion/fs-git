
!MCGitReader methodsFor: 'accessing' stamp: 'CamilloBruni 7/13/2011 15:41'!
info
	^ info ifNil: [ info := self loadVersionInfo ]! !
