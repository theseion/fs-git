
!MCGitRepository class methodsFor: 'instance creation' stamp: 'Camillobruni 8/18/2011 11:08'!
directory: aString
	^ self reference: (FSFilesystem disk referenceTo: aString)! !
