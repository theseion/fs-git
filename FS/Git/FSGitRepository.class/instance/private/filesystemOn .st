
!FSGitRepository methodsFor: 'private' stamp: 'CamilloBruni 7/15/2011 15:27'!
filesystemOn: aGitCommit
	^ (FSGitFilesystem store: (self gitStoreOn: aGitCommit))
			repository: self;
			yourself! !
