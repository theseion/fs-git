
!FSGitStore methodsFor: 'initialize-release' stamp: 'CamilloBruni 7/15/2011 18:42'!
revision: aGitCommit
	revision := aGitCommit.
	revision ifNil: [ ^ self ].
	repository ifNil: [ repository := aGitCommit repository ].
	self flag: 'TODO: directly use the commit as a reference'.
	self basicReset.! !
