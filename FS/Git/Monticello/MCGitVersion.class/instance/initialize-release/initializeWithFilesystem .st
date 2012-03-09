
!MCGitVersion methodsFor: 'initialize-release' stamp: 'CamilloBruni 1/23/2012 22:55'!
initializeWithFilesystem: aGitFilesystem
	super initialize.
	filesystem := aGitFilesystem.
	info := MCGitVersionInfo filesystem: self filesystem.! !
