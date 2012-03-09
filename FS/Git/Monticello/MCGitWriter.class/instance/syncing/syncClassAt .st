
!MCGitWriter methodsFor: 'syncing' stamp: 'CamilloBruni 7/6/2011 15:33'!
syncClassAt: directory
	|className|
	className := (directory basename copyUpToLast: $.) asSymbol.
	(Smalltalk includesKey: className)
		ifFalse: [ ^ directory delete ].
	self syncMethodsOfClass: (Smalltalk at: className) in: directory.! !
