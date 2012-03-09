
!FSGitStore methodsFor: 'internal' stamp: 'CamilloBruni 7/15/2011 15:49'!
basicSwitchToBranch: branchName
	repository updateHeadToBranch: branchName.
	self basicReset.! !
