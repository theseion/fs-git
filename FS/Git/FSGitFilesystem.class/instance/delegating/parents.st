
!FSGitFilesystem methodsFor: 'delegating' stamp: 'CamilloBruni 7/15/2011 17:18'!
parents
	^ store parents collect: [ :commit | 
		repository filesystemOn: commit ]! !
