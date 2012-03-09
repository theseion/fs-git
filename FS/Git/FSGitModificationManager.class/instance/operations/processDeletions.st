
!FSGitModificationManager methodsFor: 'operations' stamp: 'CamilloBruni 8/1/2011 16:59'!
processDeletions
	| entryPath target |
	deletedPaths copy keysAndValuesDo: [ :path :deletedEntries |
		self processDeletionOf: deletedEntries from: path]! !
