
!FSGitRepository methodsFor: 'accessing' stamp: 'CamilloBruni 7/15/2011 15:18'!
branches
	^ repository branches collect: [ :commit | 
		self filesystemOn: commit ]! !
