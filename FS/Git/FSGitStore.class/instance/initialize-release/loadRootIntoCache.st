
!FSGitStore methodsFor: 'initialize-release' stamp: 'CamilloBruni 7/19/2011 17:54'!
loadRootIntoCache
	revision ifNil: [ ^ self ].
	self halt.
	! !
