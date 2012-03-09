
!FSGitStore methodsFor: 'delegate' stamp: 'CamilloBruni 8/1/2011 16:30'!
basicCopy: source ifAbsent: aBlock to: destination ifPresent: pBlock  filesystem: aFilesystem
	self ensure: source.
	self ensure: destination.
	cacheStore basicCopy: source ifAbsent: aBlock to: destination ifPresent: pBlock  filesystem: aFilesystem.
	modManager markFileCreated: destination.! !
