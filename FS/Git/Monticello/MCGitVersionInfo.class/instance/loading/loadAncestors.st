
!MCGitVersionInfo methodsFor: 'loading' stamp: 'CamilloBruni 1/23/2012 23:05'!
loadAncestors
	^ commit parents collect: [ :aGitCommit|
		self class filesystem: filesystem commit: aGitCommit ]! !
