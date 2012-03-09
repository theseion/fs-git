
!MCGitVersion methodsFor: 'loading' stamp: 'CamilloBruni 1/23/2012 23:16'!
loadSnapshot
	^ (MCGitReader on: self filesystem root) snapshot! !
