
!FSGitModificationManager methodsFor: 'operations' stamp: 'CamilloBruni 8/1/2011 18:21'!
storeTrees
	storedObjects := Set new.
	self storeCreatedTrees.
	self storeDeletedTrees.
	repository storeObject: self rootTree! !
