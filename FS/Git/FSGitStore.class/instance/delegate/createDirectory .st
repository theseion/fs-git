
!FSGitStore methodsFor: 'delegate' stamp: 'CamilloBruni 8/1/2011 16:30'!
createDirectory: aPath
	self ensure: aPath.
	cache createDirectory: aPath.
	modManager markDirectoryCreated: aPath.! !
