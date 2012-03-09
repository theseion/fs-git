
!MCGitWriter methodsFor: 'visiting' stamp: 'CamilloBruni 2/1/2012 23:50'!
writeVersion: aVersion
	aVersion isDiffy
		ifTrue: [ self writePatch: aVersion patch ]
		ifFalse: [ self writeSnapshot: aVersion snapshot].
	self syncSources.! !
