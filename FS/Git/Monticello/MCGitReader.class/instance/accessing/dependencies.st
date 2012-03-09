
!MCGitReader methodsFor: 'accessing' stamp: 'CamilloBruni 1/23/2012 22:21'!
dependencies
	^ dependencies ifNil: [ dependencies := self loadDependencies ]! !
