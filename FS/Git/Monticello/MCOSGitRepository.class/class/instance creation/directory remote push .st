
!MCOSGitRepository class methodsFor: 'instance creation' stamp: 'CamilloBruni 1/23/2012 19:46'!
directory: aString remote: remote push: shouldPush
	^ (self reference: (FSFilesystem disk referenceTo: aString))
		remote: remote;
		pushAutomatically: shouldPush;
		yourself! !
