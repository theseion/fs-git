
!FSGitFilesystemTests methodsFor: 'initialize-release' stamp: 'Camillobruni 8/17/2011 19:57'!
createFilesystem
	^ (FSGitRepository on: (FSFilesystem memory / 'testRepo.git')) head.! !
