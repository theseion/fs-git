
!FSGitModificationManager methodsFor: 'testing' stamp: 'CamilloBruni 7/5/2011 17:05'!
isDeleted: aPath
	deletedPaths
			at: aPath parent
			ifPresent: [ :set | ^ set includes: aPath ].
	deletedPaths keysAndValuesDo: [ :parent :set|
			(parent contains: aPath)
				ifTrue: [
					(set anySatisfy: [ :path| path contains: aPath])
						ifTrue: [ ^ true ]
				].
		].
	^ false! !
